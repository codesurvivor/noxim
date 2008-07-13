% fname: routing_oddeven__sel_random__topology_8x8__.m
% ./noxim -routing oddeven -sel random -dimx 8 -dimy 8  -sim 10000 -warmup 2000 -size 8 8 -buffer 8 -hs 27 0.2 -hs 28 0.2 -hs 35 0.2 -hs 36 0.2 

function [max_pir, max_throughput, min_delay] = routing_oddeven__sel_random__topology_8x8__(symbol)

data = [
%             pir      avg_delay     throughput      max_delay       rpackets         rflits
           0.0022         18.873      0.0181885             98           1110           8876
           0.0022        18.0989      0.0187049            105           1142           9128
           0.0022        18.5658       0.018334            132           1117           8947
           0.0022        20.0083      0.0191905            116           1208           9672
           0.0022        20.4174       0.018369            157           1138           9111
           0.0022         20.531      0.0184266            142           1160           9287
           0.0022        21.1037      0.0179414            144           1147           9186
           0.0022        18.4066      0.0172401            118           1087           8689
           0.0022        17.3733       0.017998             79           1133           9071
           0.0022        18.8486      0.0175706            117           1090           8715
           0.0022        21.6255      0.0187996            234           1183           9475
           0.0022         19.606      0.0199978            134           1160           9279
           0.0022         18.904      0.0181734             95           1125           9014
           0.0022        18.8273      0.0178396            117           1071           8563
           0.0022        20.4545       0.017252            145           1087           8695
           0.0022        18.4353      0.0181806            115           1144           9163
           0.0022        18.1826      0.0182298            114           1128           9042
           0.0022        18.5582       0.016631            106           1048           8382
           0.0022        20.0996      0.0181532            146           1125           9004
           0.0022        19.3016      0.0181567            116           1144           9151
           0.0023        19.1408      0.0186348            109           1193           9541
           0.0023        21.2284      0.0195726            148           1213           9708
           0.0023        20.3141      0.0193185            106           1197           9582
           0.0023        22.3517      0.0192798            163           1214           9717
           0.0023        19.1792      0.0184941            126           1183           9469
           0.0023         19.958      0.0177659            139           1119           8954
           0.0023        21.8304      0.0196667            133           1238           9912
           0.0023         19.523      0.0183398            153           1174           9390
           0.0023        18.4768       0.017371            139           1076           8616
           0.0023         20.191      0.0189012            171           1173           9375
           0.0023        20.9358      0.0190278            116           1199           9590
           0.0023        21.5578      0.0187917            186           1185           9471
           0.0023        20.7468      0.0190943            180           1165           9318
           0.0023         20.034      0.0192676            131           1234           9865
           0.0023        18.9272      0.0183062            107           1099           8787
           0.0023         22.105      0.0203167            127           1219           9752
           0.0023        21.2971      0.0194415            141           1205           9643
           0.0023        19.7109      0.0183457            111           1176           9393
           0.0023        18.9907      0.0186627            132           1177           9406
           0.0023        19.6864      0.0192617            126           1234           9862
           0.0024        22.3116      0.0197639            198           1245           9961
           0.0024        21.2387      0.0193652            117           1240           9915
           0.0024        20.1043      0.0187012             96           1199           9575
           0.0024         21.087      0.0203931            119           1264          10115
           0.0024        22.9928      0.0205963            220           1254          10051
           0.0024        19.3024      0.0187109            110           1197           9580
           0.0024        20.5284      0.0202418            136           1234           9878
           0.0024         20.313      0.0194316            113           1243           9949
           0.0024        22.0785      0.0200918            143           1286          10287
           0.0024        21.8329        0.01975            234           1263          10112
           0.0024        18.8462       0.018791             93           1203           9621
           0.0024        20.7716      0.0194173            123           1204           9631
           0.0024        24.2548      0.0198472            276           1252          10003
           0.0024        21.8003       0.019879            142           1252          10019
           0.0024         21.819      0.0193829            182           1221           9769
           0.0024         21.859      0.0199395            260           1277          10209
           0.0024        21.2964      0.0184668            159           1181           9455
           0.0024        22.5982      0.0190703            177           1222           9764
           0.0024        20.9427       0.019381            179           1221           9768
           0.0024          23.46      0.0196825            168           1239           9920
           0.0025        21.3829       0.020834            142           1332          10667
           0.0025        21.3407      0.0198672            183           1271          10172
           0.0025        20.7015      0.0206806            158           1303          10423
           0.0025        22.6943      0.0203613            134           1302          10425
           0.0025        22.5635      0.0214365            141           1308          10461
           0.0025        19.9776      0.0195781             89           1252          10024
           0.0025        21.8332      0.0208294            129           1313          10498
           0.0025        20.0218      0.0196667             97           1240           9912
           0.0025        20.5856       0.020002            123           1262          10081
           0.0025        22.5206      0.0204824            185           1312          10487
           0.0025        21.0715      0.0206311            104           1259          10068
           0.0025        21.6445       0.020748            151           1308          10457
           0.0025        19.8876      0.0197246            175           1263          10099
           0.0025         22.435      0.0198948            208           1253          10027
           0.0025        19.9742      0.0199677            112           1240           9904
           0.0025        22.7722      0.0200139            185           1260          10087
           0.0025        21.4911      0.0202871            108           1299          10387
           0.0025        24.2562      0.0216091            167           1362          10891
           0.0025        24.7467       0.020625            242           1279          10230
           0.0025        20.6688      0.0192109            139           1229           9836
           0.0026        23.8587      0.0220258            141           1387          11101
           0.0026        23.0342      0.0213333            136           1346          10752
           0.0026          23.07      0.0209698            276           1300          10401
           0.0026        24.2974      0.0208672            184           1335          10684
           0.0026        22.1627      0.0210313            121           1346          10768
           0.0026        24.5991      0.0209087            226           1317          10538
           0.0026        22.2355      0.0209668            167           1342          10735
           0.0026        22.8064       0.021041            131           1348          10773
           0.0026        22.4837      0.0205762            178           1317          10535
           0.0026        22.9259      0.0215137            134           1377          11015
           0.0026        25.0634      0.0216777            241           1387          11099
           0.0026        22.8599      0.0209637            215           1299          10398
           0.0026         22.094      0.0206016            130           1319          10548
           0.0026        22.5772      0.0209629            197           1341          10733
           0.0026         20.743      0.0194629            185           1245           9965
           0.0026        25.6884      0.0208869            203           1316          10527
           0.0026        22.6514      0.0210754            110           1328          10622
           0.0026        27.5697      0.0215234            199           1378          11020
           0.0026        23.4284         0.0205            181           1312          10496
           0.0026        24.6461      0.0219677            233           1362          10896
           0.0027         23.279      0.0216602            166           1387          11090
           0.0027        25.3604      0.0215099            377           1357          10841
           0.0027         23.234      0.0222421            180           1402          11210
           0.0027        29.5153      0.0222917            291           1405          11235
           0.0027         21.485      0.0208613            197           1334          10681
           0.0027        23.5798      0.0223508            267           1385          11086
           0.0027        26.8047       0.021832            261           1398          11178
           0.0027        24.1605      0.0215977            288           1383          11058
           0.0027        24.5968      0.0219722            203           1384          11074
           0.0027        23.0134      0.0210215            191           1346          10763
           0.0027        24.5888      0.0212227            156           1357          10866
           0.0027        24.4771      0.0211641            175           1356          10836
           0.0027        25.8165       0.021043            202           1346          10774
           0.0027        26.5735      0.0225234            272           1442          11532
           0.0027        26.1283      0.0219062            219           1403          11216
           0.0027        26.8231       0.021998            252           1385          11087
           0.0027        30.0493      0.0218972            305           1358          10861
           0.0027        21.6893      0.0214821            171           1355          10827
           0.0027        26.0524      0.0217676            261           1394          11145
           0.0027        22.9077      0.0216504            206           1387          11085
           0.0028        26.6823      0.0219629            192           1404          11245
           0.0028        24.5986      0.0220079            185           1385          11092
           0.0028        24.3561      0.0231573            214           1435          11486
           0.0028        27.9275      0.0234707            329           1503          12017
           0.0028        28.4924      0.0229345            320           1446          11559
           0.0028        29.9682      0.0226172            292           1447          11580
           0.0028        24.6299      0.0220801            180           1413          11305
           0.0028        27.6687      0.0225527            251           1443          11547
           0.0028          27.27      0.0230547            206           1474          11804
           0.0028        26.0259      0.0235332            158           1506          12049
           0.0028         26.525      0.0222302            210           1400          11204
           0.0028        31.8404      0.0230383            411           1429          11427
           0.0028        27.0588      0.0240198            175           1514          12106
           0.0028         33.928      0.0241055            360           1542          12342
           0.0028        25.5445      0.0217949            204           1394          11159
           0.0028        26.8442      0.0227421            212           1431          11462
           0.0028        30.0251      0.0230605            336           1476          11807
           0.0028        28.4895      0.0233829            243           1475          11785
           0.0028        24.5831      0.0220254            144           1408          11277
           0.0028        23.3065      0.0217773            124           1393          11150
           0.0029        28.5282      0.0227324            191           1452          11639
           0.0029        27.1858      0.0222891            243           1426          11412
           0.0029        33.4514      0.0245684            289           1573          12579
           0.0029        25.4254      0.0231523            222           1481          11854
           0.0029         25.126       0.024043            170           1540          12310
           0.0029        25.1038      0.0229102            176           1465          11730
           0.0029        37.8437      0.0249043            414           1593          12751
           0.0029        24.5641      0.0225547            152           1443          11548
           0.0029        24.0727      0.0225605            181           1444          11551
           0.0029        28.4683      0.0226367            196           1450          11590
           0.0029        30.2779      0.0231875            304           1486          11872
           0.0029        30.3926      0.0237969            460           1523          12184
           0.0029        24.6941      0.0225694            175           1422          11375
           0.0029        27.8008      0.0225476            213           1421          11364
           0.0029        27.6971      0.0231647            267           1459          11675
           0.0029        28.8539      0.0229805            225           1472          11766
           0.0029        26.3934      0.0229206            197           1444          11552
           0.0029        31.2482      0.0237718            358           1499          11981
           0.0029        28.9747      0.0234512            394           1500          12007
           0.0029        29.9814      0.0235664            429           1508          12066
            0.003        30.6166      0.0239434            327           1531          12259
            0.003        27.7761      0.0236836            245           1514          12126
            0.003        31.9193      0.0241895            240           1548          12385
            0.003         28.244      0.0242637            293           1553          12423
            0.003        38.1808      0.0245391            426           1571          12564
            0.003        33.9396       0.024832            339           1589          12714
            0.003        26.6859      0.0241627            152           1522          12178
            0.003        30.8879      0.0251113            187           1606          12857
            0.003        30.5814       0.023877            346           1529          12225
            0.003         38.107      0.0242285            561           1551          12405
            0.003        29.5904      0.0241074            214           1543          12343
            0.003        34.3669      0.0238984            368           1529          12236
            0.003        42.7879      0.0257823            916           1598          12788
            0.003        39.8561      0.0244355            406           1564          12511
            0.003        32.5122       0.024416            517           1562          12501
            0.003         31.643      0.0235586            243           1507          12062
            0.003        28.8104      0.0235098            283           1503          12037
            0.003        32.3605      0.0249883            374           1598          12794
            0.003          38.79      0.0246094            420           1576          12600
            0.003        26.4429      0.0241806            189           1524          12187
           0.0031        37.6257      0.0254316            544           1627          13021
           0.0031        39.1048      0.0254405            580           1603          12822
           0.0031        30.2141      0.0246369            220           1551          12417
           0.0031        33.9399      0.0254473            422           1631          13029
           0.0031        32.6778      0.0256766            334           1617          12941
           0.0031         28.295      0.0250859            175           1607          12844
           0.0031        35.4158      0.0253433            470           1597          12773
           0.0031        42.0758      0.0249306            608           1570          12565
           0.0031        33.0649      0.0248047            399           1586          12700
           0.0031         29.934      0.0256016            237           1637          13108
           0.0031        33.3697      0.0247401            329           1558          12469
           0.0031         31.317      0.0248926            325           1593          12745
           0.0031        32.8721      0.0245195            267           1571          12554
           0.0031        34.2601      0.0247103            430           1557          12454
           0.0031        35.3822      0.0247897            378           1562          12494
           0.0031        32.1846      0.0257988            275           1652          13209
           0.0031        34.4571      0.0248115            644           1562          12505
           0.0031        31.4523      0.0237598            297           1521          12165
           0.0031        25.1104      0.0239434            207           1531          12259
           0.0031        25.8781      0.0246109            212           1526          12207
           0.0032        41.6588       0.025252            463           1615          12929
           0.0032        31.6411       0.024416            205           1563          12501
           0.0032        39.5228      0.0253965            535           1624          13003
           0.0032        42.8861      0.0261836            579           1677          13406
           0.0032        41.1422      0.0259702            453           1638          13089
           0.0032        35.3596      0.0251627            405           1585          12682
           0.0032        29.7575      0.0243472            214           1534          12271
           0.0032        34.8027      0.0255273            291           1632          13070
           0.0032        40.2697      0.0253965            430           1624          13003
           0.0032        32.3944      0.0258891            306           1605          12841
           0.0032        38.5769      0.0271953            323           1742          13924
           0.0032        28.0006      0.0256309            169           1640          13123
           0.0032        37.3407      0.0261855            298           1676          13407
           0.0032        29.5233      0.0254727            182           1630          13042
           0.0032        34.7282      0.0252285            442           1615          12917
           0.0032        32.3921      0.0253555            238           1622          12982
           0.0032        44.0434      0.0262656            330           1682          13448
           0.0032         37.319      0.0261211            592           1671          13374
           0.0032        42.2131      0.0258203            605           1652          13220
           0.0032        37.0423      0.0258379            332           1655          13229
           0.0033        33.0361      0.0264297            186           1691          13532
           0.0033        42.8302      0.0270566            463           1731          13853
           0.0033        35.4909      0.0267148            263           1711          13678
           0.0033        44.9374      0.0269766            477           1726          13812
           0.0033        44.2497       0.026623            510           1702          13631
           0.0033        39.4144      0.0262937            421           1658          13252
           0.0033        36.7688      0.0268571            240           1691          13536
           0.0033        35.7095      0.0264504            395           1666          13331
           0.0033        49.1772      0.0256309            683           1642          13123
           0.0033         51.432      0.0265742            699           1699          13606
           0.0033        45.4633      0.0272441            479           1744          13949
           0.0033        35.2332       0.026209            418           1677          13419
           0.0033        46.2417      0.0268672            534           1717          13756
           0.0033        33.6352      0.0265417            390           1672          13377
           0.0033        60.6588      0.0268214            695           1688          13518
           0.0033        52.1133      0.0267363            622           1712          13689
           0.0033        41.6178      0.0262718            552           1656          13241
           0.0033        37.7881      0.0262242            283           1652          13217
           0.0033        42.1705      0.0274004            755           1754          14029
           0.0033        45.6787      0.0268313            637           1690          13523
           0.0034        61.5339      0.0273828            670           1753          14020
           0.0034        58.4214       0.028496            656           1768          14134
           0.0034        65.3146        0.02775            777           1777          14208
           0.0034        47.6781      0.0272461            510           1743          13950
           0.0034        49.3691      0.0277698            406           1750          13996
           0.0034        62.4431       0.027582            801           1767          14122
           0.0034        41.4094      0.0267187            511           1710          13680
           0.0034        47.4868      0.0265801            735           1701          13609
           0.0034        45.1077      0.0275615            393           1737          13891
           0.0034        59.4314      0.0278633            696           1785          14266
           0.0034         44.694      0.0274492            401           1755          14054
           0.0034         49.775      0.0270039            653           1729          13826
           0.0034        59.7829       0.027629            665           1741          13925
           0.0034        45.5471      0.0268809            598           1720          13763
           0.0034        53.1696      0.0270742            876           1733          13862
           0.0034        33.5843      0.0256973            397           1643          13157
           0.0034        76.5904      0.0289277           1166           1853          14811
           0.0034         77.704      0.0283613            880           1814          14521
           0.0034        51.9106      0.0268926            571           1722          13769
           0.0034        56.9218      0.0275723            868           1765          14117
           0.0035        46.7237      0.0271699            489           1741          13911
           0.0035        48.2335       0.028629            615           1803          14429
           0.0035        109.401      0.0291855           1192           1867          14943
           0.0035        43.8515      0.0276445            470           1771          14154
           0.0035        49.7927      0.0275391            520           1761          14100
           0.0035        37.8356      0.0272793            359           1746          13967
           0.0035        55.7968      0.0286074            491           1831          14647
           0.0035        197.549      0.0293789           2480           1880          15042
           0.0035        54.0831      0.0272891            678           1745          13972
           0.0035         61.294      0.0279648           1187           1789          14318
           0.0035        44.2927      0.0287077            404           1780          14239
           0.0035        45.4471      0.0273047            470           1749          13980
           0.0035        54.2579       0.027293            563           1745          13974
           0.0035        170.323      0.0291309           2244           1863          14915
           0.0035        59.7881      0.0276543            857           1770          14159
           0.0035        95.6883      0.0293828           1975           1880          15044
           0.0035        68.5895      0.0277578           1053           1776          14212
           0.0035        63.5295      0.0288848            986           1847          14789
           0.0035         54.653      0.0279063            618           1784          14288
           0.0035        51.9917      0.0286706            501           1806          14450
           0.0036        130.051      0.0291836           2644           1866          14942
           0.0036        90.9336      0.0294102           1592           1883          15058
           0.0036        41.1103      0.0286387            323           1832          14663
           0.0036        51.3321      0.0290078            666           1855          14852
           0.0036        79.9813      0.0291855           1609           1869          14943
           0.0036         55.009       0.029375            548           1879          15040
           0.0036         66.713      0.0296758            727           1899          15194
           0.0036         93.548      0.0293398           1826           1876          15022
           0.0036         188.71      0.0297539           2914           1902          15234
           0.0036         84.595      0.0278496            957           1785          14259
           0.0036        84.0355      0.0294859            956           1830          14625
           0.0036        64.1056      0.0282891            929           1809          14484
           0.0036        46.2839      0.0283438            470           1814          14512
           0.0036        73.4437      0.0283203           1655           1812          14500
           0.0036        87.2836      0.0301602           1054           1929          15442
           0.0036        66.3545      0.0290258            956           1828          14629
           0.0036         50.909      0.0284861            538           1792          14357
           0.0036        77.5406       0.028082            744           1800          14378
           0.0036        54.4426      0.0277578            768           1776          14212
           0.0036        62.7925      0.0287695            628           1841          14730
           0.0037         127.66      0.0296074           1328           1895          15159
           0.0037        57.2355      0.0293262            512           1877          15015
           0.0037        171.487       0.030293           4318           1939          15510
           0.0037        130.151      0.0295117           1658           1891          15110
           0.0037        76.8745      0.0295332            841           1889          15121
           0.0037        111.913      0.0295859           1516           1893          15148
           0.0037        70.7856      0.0290684           1013           1861          14883
           0.0037        85.6984      0.0295586            874           1893          15134
           0.0037         107.97      0.0305723           1869           1956          15653
           0.0037        75.1116      0.0292891            863           1873          14996
           0.0037        71.4787      0.0300723           1151           1924          15397
           0.0037        128.788      0.0302832           1777           1940          15505
           0.0037        123.625      0.0286875           2018           1837          14688
           0.0037         42.743      0.0279609            302           1790          14316
           0.0037        143.584      0.0299492           1589           1916          15334
           0.0037        98.4372      0.0300937           1663           1926          15408
           0.0037        117.941      0.0290977           1503           1862          14898
           0.0037        57.2487      0.0293281           1194           1878          15016
           0.0037        237.944      0.0310833           2750           1957          15666
           0.0037         99.567      0.0299663           1197           1889          15103
           0.0038        70.7739       0.030084           1373           1924          15403
           0.0038        79.9624       0.029082           1167           1861          14890
           0.0038         81.397       0.029791           1449           1907          15253
           0.0038        88.6336      0.0302383            894           1935          15482
           0.0038        97.1902      0.0294297           1162           1882          15068
           0.0038        77.3434      0.0309603           1173           1948          15604
           0.0038        311.568      0.0293984           2671           1883          15052
           0.0038        267.588      0.0291699           4964           1866          14935
           0.0038         203.26      0.0308789           2105           1977          15810
           0.0038        128.573       0.029502           1525           1888          15105
           0.0038        224.309      0.0308945           3451           1978          15818
           0.0038        218.193      0.0296934           2443           1899          15203
           0.0038        126.215      0.0297578           1457           1905          15236
           0.0038        146.681      0.0302715           1800           1937          15499
           0.0038        147.345      0.0303477           2918           1942          15538
           0.0038        150.193      0.0302734           2087           1939          15500
           0.0038        78.6169      0.0294663           1396           1856          14851
           0.0038        78.6615      0.0283262           1503           1814          14503
           0.0038        154.776      0.0303535           2211           1943          15541
           0.0038        77.2654      0.0301984           1261           1903          15220
           0.0039        105.434       0.030584           1487           1957          15659
           0.0039        315.809      0.0309004           4343           1975          15821
           0.0039        46.0099      0.0299707            478           1919          15345
           0.0039        193.315      0.0302676           2278           1937          15497
           0.0039        288.087      0.0303828           2907           1944          15556
           0.0039        279.013      0.0309121           3906           1980          15827
           0.0039        410.666      0.0300469           5016           1924          15384
           0.0039        226.643      0.0318164           3806           2037          16290
           0.0039        111.632      0.0314147           2026           1980          15833
           0.0039        232.494      0.0309147           3935           1946          15581
           0.0039        334.231      0.0306055           3796           1957          15670
           0.0039        284.009      0.0309277           3888           1979          15835
           0.0039        223.254      0.0306777           4210           1963          15707
           0.0039        229.478      0.0315723           2015           2020          16165
           0.0039        245.973      0.0309746           2722           1984          15859
           0.0039        88.6291      0.0303789           1054           1944          15554
           0.0039        158.661      0.0314043           3404           2008          16079
           0.0039        75.3413      0.0308398            869           1975          15790
           0.0039        270.182      0.0302832           4215           1938          15505
           0.0039        302.554      0.0306885           3918           1936          15467
            0.004        387.174       0.031584           5963           2021          16171
            0.004        293.861      0.0308555           4220           1974          15798
            0.004        306.188      0.0315215           3438           2018          16139
            0.004        191.148      0.0304102           3476           1947          15570
            0.004        387.475      0.0312402           4739           1999          15995
            0.004        257.497      0.0307246           4003           1965          15731
            0.004        201.288      0.0305117           3116           1951          15622
            0.004         268.94      0.0307227           5284           1966          15730
            0.004        427.237      0.0301973           4421           1931          15461
            0.004        231.603      0.0307129           4121           1965          15725
            0.004        183.171      0.0308066           2366           1972          15773
            0.004        206.245      0.0310137           3937           1984          15879
            0.004        446.282      0.0306706           3632           1933          15458
            0.004        134.694      0.0318379           2424           2038          16301
            0.004        242.529      0.0305156           2212           1953          15624
            0.004        220.261       0.032002           2586           2050          16385
            0.004        155.956      0.0316582           2254           2026          16209
            0.004        138.183      0.0312578           2696           2000          16004
            0.004        289.865          0.031           3847           1984          15872
            0.004        183.697      0.0303652           2381           1944          15547
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
