% fname: routing_oddeven__sel_nop__topology_8x8__.m
% ./noxim -routing oddeven -sel nop -dimx 8 -dimy 8  -sim 10000 -warmup 2000 -size 8 8 -buffer 2 -hs 6 0.2 -hs 7 0.2 -hs 14 0.2 -hs 15 0.2 

function [max_pir, max_throughput, min_delay] = routing_oddeven__sel_nop__topology_8x8__(symbol)

data = [
%             pir      avg_delay     throughput      max_delay       rpackets         rflits
           0.0015        21.6018      0.0128508            135            796           6374
           0.0015        20.2742      0.0127396             81            766           6115
           0.0015        19.9226      0.0125218             96            788           6311
           0.0015        19.1124      0.0126742            100            774           6185
           0.0015        20.9251      0.0131096            110            748           5978
           0.0015             20      0.0129461             94            751           6007
           0.0015        21.7494      0.0142545            122            798           6386
           0.0015        19.5699      0.0136705            123            751           6015
           0.0015        20.4636      0.0135125             86            811           6486
           0.0015        19.2568      0.0122146            111            732           5863
           0.0015        19.8203      0.0121291             98            740           5919
           0.0015        20.5165      0.0124242             97            757           6063
           0.0015        19.5252      0.0125771             75            754           6037
           0.0015        19.8623      0.0127398            111            777           6217
           0.0015        20.3559      0.0125861            102            767           6142
           0.0015        19.4102      0.0119529             83            729           5833
           0.0015        18.3731      0.0116129             81            721           5760
           0.0015        21.2418      0.0130536            150            823           6579
           0.0015        20.0643      0.0130266            107            793           6357
           0.0015        19.7708      0.0134741            118            781           6252
           0.0017         22.105      0.0140779            184            857           6870
           0.0017        22.1588      0.0150551            125            888           7106
           0.0017        21.5943      0.0145042            133            870           6962
           0.0017         20.652         0.0136             98            816           6528
           0.0017        21.7049      0.0149009            121            864           6914
           0.0017        23.8655       0.014877            142            922           7379
           0.0017        20.9734      0.0137667             91            826           6608
           0.0017        21.9931      0.0139839            143            868           6936
           0.0017        20.8347      0.0136045            109            829           6639
           0.0017        20.8824      0.0140647            211            816           6526
           0.0017        21.5794      0.0142987            125            844           6749
           0.0017        20.3432      0.0139306             86            877           7021
           0.0017        21.7476      0.0146409            140            923           7379
           0.0017        20.5535      0.0140984             84            860           6880
           0.0017        20.6976      0.0145604             87            873           6989
           0.0017        21.5127      0.0149016            136            909           7272
           0.0017        21.4563      0.0143208             90            859           6874
           0.0017        23.3119      0.0140121            187            869           6950
           0.0017        21.3231       0.013875            125            848           6771
           0.0017        21.8131      0.0150896            107            904           7243
           0.0019           23.6      0.0163083            238            980           7828
           0.0019        23.8655      0.0159266            218           1004           8027
           0.0019        22.9102      0.0160556            129           1013           8092
           0.0019        22.2068      0.0155278            100            977           7826
           0.0019          23.75      0.0161316            144            920           7356
           0.0019        24.4507      0.0154467            117            943           7538
           0.0019        22.8189      0.0163728             98            950           7597
           0.0019         25.344      0.0173463            135           1058           8465
           0.0019         23.737       0.015254            196            962           7688
           0.0019        24.9046      0.0158833            188            954           7624
           0.0019        24.0335       0.015166            165            926           7401
           0.0019        23.3596      0.0161492            207           1001           8010
           0.0019        21.9342      0.0149563             95            942           7538
           0.0019          22.06      0.0158848            122           1017           8133
           0.0019        22.5292      0.0157418            117            960           7682
           0.0019        25.5399      0.0159536            186            989           7913
           0.0019        25.7874      0.0164167            164           1035           8274
           0.0019        22.7221      0.0155676            170            950           7597
           0.0019         24.609      0.0162157            144           1005           8043
           0.0019         21.455      0.0150458            124            901           7222
           0.0021        25.1277      0.0174549            170           1065           8518
           0.0021        23.4337      0.0168671            149           1063           8501
           0.0021        28.3646      0.0179464            228           1130           9045
           0.0021         25.288      0.0170504            164           1059           8457
           0.0021        24.3744      0.0158379            168           1015           8109
           0.0021        26.8278      0.0180615            148           1138           9103
           0.0021        24.3451      0.0169496            159           1052           8407
           0.0021        25.9478      0.0169693            196           1035           8281
           0.0021        26.5705      0.0179762            163           1134           9060
           0.0021        24.4076      0.0173448            131           1077           8603
           0.0021        24.8443      0.0166523            147           1066           8526
           0.0021        22.4612      0.0165391            118           1058           8468
           0.0021        29.0046      0.0174496            266           1082           8655
           0.0021        24.6092      0.0177848            105           1085           8679
           0.0021        24.6439      0.0172056            185           1067           8534
           0.0021        26.9871      0.0180438            170           1083           8661
           0.0021         24.611      0.0178586            118           1090           8715
           0.0021        26.2705       0.017131            154           1061           8497
           0.0021        23.3703      0.0173214            138           1091           8730
           0.0021        25.9889      0.0173992            249           1080           8630
           0.0023        29.2884      0.0185508            200           1186           9498
           0.0023         27.872      0.0194722            161           1227           9814
           0.0023        29.0592      0.0193791            227           1182           9457
           0.0023        33.0861      0.0181582            203           1162           9297
           0.0023        27.2132      0.0183286            204           1135           9091
           0.0023         31.862      0.0189861            440           1196           9569
           0.0023        32.3036      0.0191895            288           1189           9518
           0.0023        35.3416      0.0192262            427           1212           9690
           0.0023        31.0593       0.019254            232           1214           9704
           0.0023        29.1969      0.0184544            227           1163           9301
           0.0023        32.7828      0.0195079            279           1229           9832
           0.0023        31.1316      0.0192339            333           1193           9540
           0.0023        30.7226       0.019381            310           1222           9768
           0.0023        31.2329      0.0185476            207           1168           9348
           0.0023         30.451      0.0190766            277           1184           9462
           0.0023        33.5879      0.0186071            419           1172           9378
           0.0023        32.6896      0.0205625            307           1234           9870
           0.0023        26.9755      0.0181409            215           1143           9143
           0.0023        25.9781      0.0176694            191           1096           8764
           0.0023        31.6686       0.019291            260           1234           9877
           0.0025        31.2409      0.0200957            245           1287          10289
           0.0025        33.4956      0.0203004            279           1259          10069
           0.0025        33.4383      0.0201426            256           1289          10313
           0.0025        27.7981      0.0185918            252           1189           9519
           0.0025        34.3941      0.0211734            301           1312          10502
           0.0025        30.6011      0.0198633            173           1271          10170
           0.0025        33.6959      0.0201426            227           1289          10313
           0.0025        33.6194      0.0204881            324           1290          10326
           0.0025        30.4594      0.0195996            224           1256          10035
           0.0025        28.8063      0.0200595            240           1265          10110
           0.0025        39.0626      0.0202188            388           1293          10352
           0.0025        39.5071      0.0199629            319           1276          10221
           0.0025        35.8603      0.0200215            482           1281          10251
           0.0025        33.8005      0.0202676            393           1298          10377
           0.0025        36.0356      0.0201641            417           1291          10324
           0.0025        30.8988      0.0200527            224           1284          10267
           0.0025        37.2881      0.0206653            498           1281          10250
           0.0025        25.1799      0.0186914            143           1195           9570
           0.0025        31.9323      0.0195565            326           1212           9700
           0.0025        33.0705      0.0201523            239           1290          10318
           0.0027        34.3297      0.0219603            249           1383          11068
           0.0027        45.3485       0.022631            406           1426          11406
           0.0027          57.36      0.0218496            778           1400          11187
           0.0027        46.5994      0.0222207            472           1423          11377
           0.0027        48.5982      0.0227282            468           1431          11455
           0.0027        47.6422      0.0236496            472           1442          11541
           0.0027        43.6025      0.0214524            394           1351          10812
           0.0027        40.3842       0.021332            538           1364          10922
           0.0027        38.0148      0.0214385            294           1351          10805
           0.0027         41.979      0.0209063            357           1336          10704
           0.0027        42.7549      0.0223242            419           1428          11430
           0.0027        43.2453      0.0227361            297           1431          11459
           0.0027        40.1673      0.0217383            317           1393          11130
           0.0027        41.8197       0.022002            824           1409          11265
           0.0027        49.3396      0.0227877            782           1434          11485
           0.0027         39.652      0.0216329            326           1362          10903
           0.0027        39.6598      0.0214722            482           1352          10822
           0.0027        36.3694      0.0212188            480           1359          10864
           0.0027        35.3967      0.0217937            340           1374          10984
           0.0027        43.1461      0.0223948            288           1410          11287
           0.0029        70.9277      0.0239668            786           1535          12271
           0.0029         60.332      0.0236465            886           1512          12107
           0.0029        65.8053      0.0235879            919           1510          12077
           0.0029        81.7594      0.0237734           1213           1521          12172
           0.0029        49.4873      0.0239746            490           1535          12275
           0.0029        105.987       0.024125           2076           1544          12352
           0.0029        43.8012      0.0227363            441           1454          11641
           0.0029        56.2994        0.02275            694           1433          11466
           0.0029        48.8325      0.0231484            301           1481          11852
           0.0029        71.4721      0.0233552           1088           1472          11771
           0.0029        57.1821      0.0236151            524           1488          11902
           0.0029         46.433      0.0222837            648           1404          11231
           0.0029        45.4633      0.0232383            528           1487          11898
           0.0029        71.2414      0.0231797           1018           1483          11868
           0.0029        55.7524      0.0224355           1198           1438          11487
           0.0029        57.1304       0.023127            767           1480          11841
           0.0029        80.3424      0.0243651           1287           1536          12280
           0.0029        73.7953      0.0242798            763           1529          12237
           0.0029        61.6102        0.02275            913           1457          11648
           0.0029        47.9542      0.0232227            422           1485          11890
           0.0031        136.879      0.0252109           1741           1614          12908
           0.0031        83.8333      0.0248477           1311           1590          12722
           0.0031        80.7698      0.0248353           1212           1564          12517
           0.0031        72.2747       0.024002            841           1536          12289
           0.0031        130.571      0.0243477           1573           1557          12466
           0.0031        172.673      0.0246211           2521           1575          12606
           0.0031        79.6762      0.0249941           1195           1600          12797
           0.0031        104.928      0.0248242           1872           1589          12710
           0.0031        74.0602      0.0247798           1823           1561          12489
           0.0031        60.5058      0.0243516            629           1560          12468
           0.0031        233.668      0.0261825           4594           1650          13196
           0.0031        94.8237      0.0246621           1035           1577          12627
           0.0031        45.6186       0.023623            427           1513          12095
           0.0031        88.7701      0.0242539           1412           1553          12418
           0.0031        85.4687      0.0244609            790           1564          12524
           0.0031        90.7104      0.0246387           1262           1578          12615
           0.0031         53.845      0.0244335            496           1516          12119
           0.0031        74.6124      0.0246543            794           1579          12623
           0.0031        94.9509      0.0252063           1385           1588          12704
           0.0031        82.6513      0.0247754            927           1586          12685
           0.0033        92.9641      0.0256309            997           1642          13123
           0.0033         123.38      0.0260117           1748           1665          13318
           0.0033        240.093      0.0255293           3221           1633          13071
           0.0033        152.985      0.0257031           3374           1645          13160
           0.0033        216.092      0.0256797           2551           1643          13148
           0.0033        217.897      0.0274583           3256           1729          13839
           0.0033        197.856      0.0265371           1304           1699          13587
           0.0033        208.996      0.0267227           2178           1709          13682
           0.0033        215.618      0.0270853           2710           1707          13651
           0.0033        206.021      0.0261151           1918           1646          13162
           0.0033        276.908      0.0257344           3705           1646          13176
           0.0033        135.081      0.0262637           1570           1682          13447
           0.0033        248.404      0.0255664           3034           1637          13090
           0.0033        162.176      0.0254219           1530           1627          13016
           0.0033        237.062      0.0255176           2965           1634          13065
           0.0033        344.446      0.0265496           4169           1673          13381
           0.0033        221.092       0.025918           1934           1659          13270
           0.0033        247.644      0.0253027           2847           1619          12955
           0.0033        121.352      0.0260254           1747           1665          13325
           0.0033        171.691      0.0261406           2591           1672          13384
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
