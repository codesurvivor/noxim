/*
 * Noxim - the NoC Simulator
 *
 * (C) 2005-2010 by the University of Catania
 * For the complete list of authors refer to file ../doc/AUTHORS.txt
 * For the license applied to these sources refer to file ../doc/LICENSE.txt
 *
 * This file contains the declaration of the tile
 */

#ifndef __NOXIMHUB_H__
#define __NOXIMHUB_H__

#include <map>
#include <systemc.h>
#include "DataStructs.h"
#include "Buffer.h"
#include "ReservationTable.h"

#include "Initiator.h"
#include "Target.h"
#include "TokenRing.h"

using namespace std;

SC_MODULE(Hub)
{
    SC_HAS_PROCESS(Hub);
    
    // I/O Ports
    sc_in_clk clock; // The input clock for the tile
    sc_in <bool> reset; // The reset signal for the tile

    int local_id; // Unique ID
    TokenRing* token_ring;
    int num_ports;
    vector<int> attachedNodes;
    vector<int> txChannels;
    vector<int> rxChannels;

    sc_in<Flit>* flit_rx;
    sc_in<bool>* req_rx;
    sc_out<bool>* ack_rx;

    sc_out<Flit>* flit_tx;
    sc_out<bool>* req_tx;	   
    sc_in<bool>* ack_tx;	  

    Buffer* buffer;	        // Buffer for each port
    bool* current_level_rx;	// Current level for ABP
    bool* current_level_tx;	// Current level for ABP

    map<int, Initiator*> init;
    map<int, Target*> target;

    map<int, int> tile2port_mapping;
    map<int, int> tile2hub_mapping;

    int start_from_port; // Port from which to start the reservation cycle

    ReservationTable reservation_table;	// Switch reservation table
    ReservationTable in_reservation_table;	// Switch reservation table
    ReservationTable wireless_reservation_table;// Wireless reservation table

    void rxProcess(); // The receiving process
    void txProcess(); // The transmitting process
    void rxRadioProcess(); // The radio transceiver process
    void txRadioProcess(); // The radio transceiver process

    int route(Flit&);
    int tile2Port(int);

    // Constructor

    Hub(sc_module_name nm, int id, TokenRing * tr): sc_module(nm) {
        SC_METHOD(rxProcess);
        sensitive << reset;
        sensitive << clock.pos();

        SC_METHOD(txProcess);
        sensitive << reset;
        sensitive << clock.pos();

        SC_METHOD(rxRadioProcess);
        sensitive << reset;
        sensitive << clock.pos();

        SC_METHOD(txRadioProcess);
        sensitive << reset;
        sensitive << clock.pos();

        local_id = id;
	token_ring = tr;
        num_ports = GlobalParams::hub_configuration[local_id].attachedNodes.size();
        attachedNodes = GlobalParams::hub_configuration[local_id].attachedNodes;
        txChannels = GlobalParams::hub_configuration[local_id].txChannels;
        rxChannels = GlobalParams::hub_configuration[local_id].rxChannels;

        flit_rx = new sc_in<Flit>[num_ports];
        req_rx = new sc_in<bool>[num_ports];
        ack_rx = new sc_out<bool>[num_ports];

        flit_tx = new sc_out<Flit>[num_ports];
        req_tx = new sc_out<bool>[num_ports];
        ack_tx = new sc_in<bool>[num_ports];

        buffer = new Buffer[num_ports];
        current_level_rx = new bool[num_ports];
        current_level_tx = new bool[num_ports];

        start_from_port = 0;

        for (unsigned int i = 0; i < txChannels.size(); i++) {
            char txt[20];
            sprintf(txt, "init_%d", txChannels[i]);
            init[txChannels[i]] = new Initiator(txt);
	    token_ring->attachHub(txChannels[i],local_id);
        }

        for (unsigned int i = 0; i < rxChannels.size(); i++) {
            char txt[20];
            sprintf(txt, "target_%d", rxChannels[i]);
            target[rxChannels[i]] = new Target(txt, rxChannels[i], this);
        }

        start_from_port = 0;
    }
};

#endif
