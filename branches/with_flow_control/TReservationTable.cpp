/*****************************************************************************

  TReservationTable.cpp -- TReservationTable implementation

 *****************************************************************************/
/* Copyright 2005-2007  
    Fabrizio Fazzino <fabrizio.fazzino@diit.unict.it>
    Maurizio Palesi <mpalesi@diit.unict.it>
    Davide Patti <dpatti@diit.unict.it>

 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
 */
#include "NoximDefs.h"
#include "TReservationTable.h"

//---------------------------------------------------------------------------

TReservationTable::TReservationTable()
{
  clear();
}

//---------------------------------------------------------------------------

void TReservationTable::clear()
{
  rtable.resize(DIRECTIONS+1);
  
  // note that NOT_VALID entries should remain untouched
  for (int i=0; i<DIRECTIONS+1; i++)
    if (rtable[i] != NOT_VALID) rtable[i] = NOT_RESERVED;
}

//---------------------------------------------------------------------------

bool TReservationTable::isAvailable(const int port_out) const
{
  assert(port_out >= 0 && port_out < DIRECTIONS+1);

  return ((rtable[port_out] == NOT_RESERVED));
}

//---------------------------------------------------------------------------

void TReservationTable::reserve(const int port_in, const int port_out)
{
    // reservation of reserved/not valid ports is illegal. Correctness
    // should be assured by TReservationTable users
    assert(isAvailable(port_out));

    // check for previous reservation to be released
  int port = getOutputPort(port_in);

  if (port!=NOT_RESERVED)
    release(port);

  rtable[port_out] = port_in;
}

//---------------------------------------------------------------------------

void TReservationTable::release(const int port_out)
{
  assert(port_out >= 0 && port_out < DIRECTIONS+1);
    // there is a valid reservation on port_out
  assert(rtable[port_out] >= 0 && rtable[port_out] < DIRECTIONS+1);

  rtable[port_out] = NOT_RESERVED;
}

//---------------------------------------------------------------------------

int TReservationTable::getOutputPort(const int port_in) const
{
  assert(port_in >= 0 && port_in < DIRECTIONS+1);

  for (int i=0; i<DIRECTIONS+1; i++)
    if (rtable[i] == port_in)
      return i; // port_in reserved outport i

  // semantic: port_in currently doesn't reserve any out port
  return NOT_RESERVED;
}
//---------------------------------------------------------------------------

// makes port_out no longer available for reservation/release
void TReservationTable::invalidate(const int port_out)
{
    rtable[port_out] = NOT_VALID;
}



