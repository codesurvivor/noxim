% fname: routing_oddeven__sel_nop__topology_8x8__.m
% ./noxim -routing oddeven -sel nop -dimx 8 -dimy 8  -sim 10000 -warmup 2000 -size 8 8 -buffer 4 -hs 27 0.2 -hs 28 0.2 -hs 35 0.2 -hs 36 0.2 

function [max_pir, max_throughput, min_delay] = routing_oddeven__sel_nop__topology_8x8__(symbol)

data = [
%             pir      avg_delay     throughput      max_delay       rpackets         rflits
            0.002        17.8507      0.0163184            112           1045           8355
            0.002        16.4152      0.0164762             88           1038           8304
            0.002        18.1632      0.0182771            198           1097           8773
            0.002        17.5239      0.0167646             94           1006           8047
            0.002        18.0815      0.0161667            135           1018           8148
            0.002        16.1283      0.0157262            140            990           7926
            0.002        18.8868      0.0168145            140           1042           8340
            0.002        17.6076      0.0157798            115            994           7953
            0.002        16.2859      0.0174333            105           1046           8368
            0.002        16.3192      0.0165099             95           1040           8321
            0.002        17.2407      0.0168094            114           1026           8203
            0.002        17.0059      0.0167664             90           1023           8182
            0.002         16.817      0.0160615             90           1011           8095
            0.002        16.7554      0.0161508            122           1018           8140
            0.002        16.4269      0.0166885             77           1019           8144
            0.002        18.7749      0.0167143            138           1053           8424
            0.002        18.3333      0.0169012             94           1047           8383
            0.002        17.0634      0.0162782             93           1009           8074
            0.002        16.9566      0.0175678             95           1037           8292
            0.002        16.5064      0.0163387            132           1013           8104
           0.0022         20.112      0.0178452            168           1125           8994
           0.0022        19.1517      0.0193604            173           1160           9293
           0.0022        17.6301      0.0168438             98           1076           8624
           0.0022        18.8108      0.0184782            134           1163           9313
           0.0022        17.0035      0.0179603             77           1132           9052
           0.0022        20.0429      0.0188226            281           1166           9336
           0.0022        17.9745       0.017166            175           1099           8789
           0.0022        18.6067      0.0177363             98           1134           9081
           0.0022        16.9972      0.0176988             98           1080           8637
           0.0022        18.4461      0.0185451             97           1132           9050
           0.0022        17.3482      0.0180585             82           1120           8957
           0.0022        19.9749      0.0179819            185           1114           8919
           0.0022        18.0253      0.0175873             85           1107           8864
           0.0022        17.3455      0.0176309            110           1126           9027
           0.0022        17.1653      0.0171133             84           1095           8762
           0.0022         17.327      0.0181641             98           1162           9300
           0.0022        19.9586      0.0180397            174           1136           9092
           0.0022        18.3899       0.018916            105           1154           9231
           0.0022        19.6648      0.0179693            157           1098           8769
           0.0022        19.1872       0.017625            148           1111           8883
           0.0024        21.0791      0.0199512            141           1277          10215
           0.0024         20.239      0.0193851            140           1201           9615
           0.0024        19.5245      0.0194473            123           1245           9957
           0.0024        20.4689      0.0188398            157           1205           9646
           0.0024        19.4253      0.0198871             96           1232           9864
           0.0024        18.9026       0.018916             92           1212           9685
           0.0024        18.3858      0.0195625            106           1213           9703
           0.0024           20.5      0.0204657            104           1270          10151
           0.0024        20.2881      0.0197679            173           1246           9963
           0.0024        20.0236      0.0190968            144           1185           9472
           0.0024        20.8321      0.0197439            163           1203           9635
           0.0024        20.1651       0.020246            123           1254          10042
           0.0024        21.3393      0.0206935            135           1285          10264
           0.0024        19.9682      0.0199921            145           1259          10076
           0.0024        18.5231      0.0188906             94           1210           9672
           0.0024        19.1055        0.01925            132           1232           9856
           0.0024        20.0964      0.0189405            155           1193           9546
           0.0024        20.2262       0.020504            113           1291          10334
           0.0024        20.9614      0.0200323            175           1242           9936
           0.0024        21.0103      0.0204315            180           1266          10134
           0.0026        23.0639      0.0212656            169           1362          10888
           0.0026        20.4742       0.022252            202           1358          10859
           0.0026        20.4953      0.0203393            177           1282          10251
           0.0026        22.1472      0.0209246            182           1318          10546
           0.0026        21.4368      0.0202722            142           1257          10055
           0.0026        21.6098      0.0212441            134           1361          10877
           0.0026        21.9793      0.0203555            121           1303          10422
           0.0026        19.4694      0.0201387            100           1289          10311
           0.0026        22.7998      0.0203789            173           1304          10434
           0.0026        21.9661      0.0214476            203           1329          10638
           0.0026        23.6786      0.0213373            228           1344          10754
           0.0026        25.6334      0.0221742            431           1353          10821
           0.0026        23.3364      0.0206387            259           1320          10567
           0.0026        20.1092      0.0204883            171           1309          10490
           0.0026        22.3529      0.0211673            148           1315          10499
           0.0026        22.8136      0.0205988            165           1277          10217
           0.0026        22.3231      0.0207871            166           1331          10643
           0.0026        22.0044      0.0220383            190           1367          10931
           0.0026        21.9985      0.0211169            221           1310          10474
           0.0026         21.563      0.0218911            218           1357          10858
           0.0028        23.0236      0.0221825            168           1396          11180
           0.0028        23.5551      0.0224683            202           1416          11324
           0.0028        25.8082      0.0235794            212           1486          11884
           0.0028        22.8281      0.0222871            212           1425          11411
           0.0028        27.9959      0.0231091            212           1455          11647
           0.0028        28.8024      0.0236528            290           1488          11921
           0.0028        30.2419      0.0231448            373           1459          11665
           0.0028         24.314       0.022668            157           1382          11062
           0.0028        24.9415      0.0227857            294           1435          11484
           0.0028        24.1382      0.0233402            168           1425          11390
           0.0028        23.2514       0.022996            173           1448          11590
           0.0028        26.8047      0.0232051            291           1485          11881
           0.0028        22.2342      0.0218155            161           1375          10995
           0.0028        22.4704      0.0221465            114           1418          11339
           0.0028        27.4997      0.0232937            326           1467          11740
           0.0028        25.7343      0.0221816            187           1419          11357
           0.0028         25.102      0.0227109            216           1451          11628
           0.0028        26.8277      0.0232177            329           1439          11516
           0.0028        24.6028      0.0229107            179           1445          11547
           0.0028         32.576      0.0222852            568           1427          11410
            0.003        25.8052      0.0240762            215           1540          12327
            0.003        29.8569      0.0237266            293           1516          12148
            0.003        27.9981      0.0241426            252           1545          12361
            0.003        31.4182      0.0254141            353           1626          13012
            0.003        32.6493      0.0237461            448           1520          12158
            0.003        30.1975      0.0241973            424           1549          12389
            0.003        27.3468      0.0239405            286           1508          12066
            0.003         25.222       0.023457            278           1500          12010
            0.003        26.4709      0.0241602            165           1546          12370
            0.003         25.861      0.0233984            257           1496          11980
            0.003        33.4322      0.0238984            483           1527          12236
            0.003        24.7747      0.0237262            153           1496          11958
            0.003        26.0662      0.0230198            242           1451          11602
            0.003        30.4481      0.0245625            326           1571          12576
            0.003        32.5695      0.0242832            255           1554          12433
            0.003        25.9271      0.0229082            236           1468          11729
            0.003        32.1515      0.0242103            269           1525          12202
            0.003         26.055      0.0252617            181           1618          12934
            0.003        30.5102      0.0252207            257           1615          12913
            0.003        31.3371      0.0246523            297           1575          12622
           0.0032        32.8206      0.0253594            322           1622          12984
           0.0032        31.0554       0.025496            246           1606          12850
           0.0032        39.2422         0.0265            378           1643          13144
           0.0032        26.8312       0.025879            185           1605          12836
           0.0032         38.166      0.0250508            651           1602          12826
           0.0032        30.8849      0.0270377            284           1703          13627
           0.0032        35.7448      0.0262051            510           1677          13417
           0.0032        30.0006      0.0257897            212           1625          12998
           0.0032        33.9058      0.0240527            333           1539          12315
           0.0032        32.2579      0.0248438            313           1590          12720
           0.0032        34.5793      0.0260996            446           1671          13363
           0.0032        29.8247      0.0253047            210           1620          12956
           0.0032        34.4873      0.0264668            360           1693          13551
           0.0032        30.8572      0.0250527            347           1604          12827
           0.0032        27.1323      0.0251699            213           1610          12887
           0.0032        32.0321      0.0253281            238           1620          12968
           0.0032        45.8265      0.0258223            930           1654          13221
           0.0032        31.6667      0.0256582            272           1641          13137
           0.0032        32.7134      0.0264082            372           1689          13521
           0.0032        42.5232      0.0245801            552           1573          12585
           0.0034        38.4651      0.0268789            477           1720          13762
           0.0034        34.4917      0.0273047            573           1747          13980
           0.0034        43.1425      0.0271914            750           1740          13922
           0.0034        42.8294      0.0274004            492           1753          14029
           0.0034        33.7203      0.0273214            253           1720          13770
           0.0034        57.9536      0.0279805            680           1788          14326
           0.0034        41.6817      0.0266992            384           1709          13670
           0.0034        51.3157      0.0274961            608           1758          14078
           0.0034        42.4111      0.0271055            449           1737          13878
           0.0034         59.645      0.0276934            620           1772          14179
           0.0034        53.0479      0.0283906            903           1818          14536
           0.0034        48.1309      0.0273281            558           1749          13992
           0.0034         37.089      0.0266641            271           1708          13652
           0.0034        42.4171      0.0283492            464           1786          14288
           0.0034         40.469      0.0276641            424           1772          14164
           0.0034        45.7633      0.0277778            667           1749          14000
           0.0034        44.9269      0.0281973            458           1806          14437
           0.0034        64.8002       0.027918            761           1787          14294
           0.0034        38.1057       0.025625            577           1637          13120
           0.0034        39.1622      0.0265137            350           1695          13575
           0.0036        78.5044      0.0282949           1146           1812          14487
           0.0036        64.3898      0.0280137            687           1793          14343
           0.0036        50.5392      0.0285078            881           1825          14596
           0.0036        69.0243      0.0289395            928           1853          14817
           0.0036        136.505      0.0301934           1488           1931          15459
           0.0036        35.4196      0.0284648            221           1823          14574
           0.0036        46.1253      0.0285762            547           1827          14631
           0.0036        62.2262      0.0289453            798           1852          14820
           0.0036        50.4051      0.0293184            519           1876          15011
           0.0036        79.5546      0.0277598           1771           1776          14213
           0.0036          75.79      0.0293906           1393           1881          15048
           0.0036        61.9624      0.0291548            657           1837          14694
           0.0036        48.4022      0.0287324            482           1840          14711
           0.0036        50.8966       0.027666            811           1770          14165
           0.0036        124.901      0.0300684           1160           1923          15395
           0.0036        99.8808       0.028709           1580           1837          14699
           0.0036        58.8202      0.0286738            683           1835          14681
           0.0036        78.3965      0.0298398           1000           1909          15278
           0.0036        111.521       0.030502           1540           1950          15617
           0.0036        104.358      0.0297852           1352           1907          15250
           0.0038        57.5569       0.029668            456           1898          15190
           0.0038        266.672      0.0309707           3187           1982          15857
           0.0038        123.157       0.030543           1664           1956          15638
           0.0038        124.708      0.0307324           1567           1966          15735
           0.0038        122.314      0.0302793           2248           1939          15503
           0.0038        87.3316      0.0305547           1305           1954          15644
           0.0038        157.827      0.0300176           1814           1924          15369
           0.0038        94.4195      0.0305605           1471           1957          15647
           0.0038        58.4128      0.0295625            847           1892          15136
           0.0038        140.475      0.0302363           1293           1933          15481
           0.0038        185.096      0.0313809           2578           2009          16067
           0.0038        177.758      0.0306465           1985           1963          15691
           0.0038        343.354       0.030543           3731           1956          15638
           0.0038        126.606      0.0295098           1359           1889          15109
           0.0038        122.244      0.0298027           1566           1907          15259
           0.0038        99.2952      0.0287988           1753           1843          14745
           0.0038        161.801      0.0300766           2852           1865          14918
           0.0038        79.9378      0.0296289           1492           1897          15170
           0.0038        83.8301      0.0296191           1461           1895          15165
           0.0038        126.557      0.0296699           1237           1900          15191
];

rows = size(data, 1);
cols = size(data, 2);

data_delay = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+1);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_delay = [data_delay; data(ifirst, 1:cols-5), avg ci];
end

figure(1);
hold on;
plot(data_delay(:,1), data_delay(:,2), symbol);

data_throughput = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+2);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_throughput = [data_throughput; data(ifirst, 1:cols-5), avg ci];
end

figure(2);
hold on;
plot(data_throughput(:,1), data_throughput(:,2), symbol);

data_maxdelay = [];
for i = 1:rows/20,
   ifirst = (i - 1) * 20 + 1;
   ilast  = ifirst + 20 - 1;
   tmp = data(ifirst:ilast, cols-5+3);
   avg = mean(tmp);
   [h sig ci] = ttest(tmp, 0.1);
   ci = (ci(2)-ci(1))/2;
   data_maxdelay = [data_maxdelay; data(ifirst, 1:cols-5), avg ci];
end

figure(3);
hold on;
plot(data_maxdelay(:,1), data_maxdelay(:,2), symbol);


%-------- Saturation Analysis -----------
slope=[];
for i=2:size(data_throughput,1),
    slope(i-1) = (data_throughput(i,2)-data_throughput(i-1,2))/(data_throughput(i,1)-data_throughput(i-1,1));
end

for i=2:size(slope,2),
    if slope(i) < (0.95*mean(slope(1:i)))
        max_pir = data_throughput(i, 1);
        max_throughput = data_throughput(i, 2);
        min_delay = data_delay(i, 2);
        break;
    end
end
