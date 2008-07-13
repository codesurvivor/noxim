% fname: routing_oddeven__sel_bufferlevel__topology_8x8__.m
% ./noxim -routing oddeven -sel bufferlevel -dimx 8 -dimy 8  -sim 10000 -warmup 2000 -size 8 8 -buffer 2 -traffic transpose1 

function [max_pir, max_throughput, min_delay] = routing_oddeven__sel_bufferlevel__topology_8x8__(symbol)

data = [
%             pir      avg_delay     throughput      max_delay       rpackets         rflits
            0.008        27.0907      0.0635449            503           4068          32535
            0.008        23.1156      0.0640586            349           4100          32798
            0.008        24.4527      0.0637988            333           4082          32665
            0.008        24.7583      0.0646113            373           4134          33081
            0.008        23.4354      0.0630371            289           4035          32275
            0.008        24.3035      0.0642344            318           4112          32888
            0.008        24.4681      0.0642148            351           4112          32878
            0.008        22.2771      0.0647969            227           4147          33176
            0.008        25.9507      0.0658496            449           4215          33715
            0.008        23.2612      0.0636738            191           4073          32601
            0.008        25.1805      0.0644492            431           4127          32998
            0.008        22.3548      0.0637285            200           4076          32629
            0.008        23.8492      0.0647051            296           4137          33129
            0.008        22.3056      0.0647441            206           4143          33149
            0.008        22.2926      0.0634453            216           4060          32484
            0.008         23.655      0.0657422            263           4209          33660
            0.008        24.0019      0.0645312            291           4130          33040
            0.008        24.0445      0.0634824            267           4064          32503
            0.008        23.0313      0.0643594            260           4118          32952
            0.008        22.7923      0.0633887            200           4058          32455
           0.0088        26.6795      0.0704648            388           4509          36078
           0.0088         25.829      0.0695313            364           4450          35600
           0.0088        29.4378      0.0695391            922           4450          35604
           0.0088        30.0307      0.0707969            858           4530          36248
           0.0088        26.4437      0.0691055            511           4424          35382
           0.0088         27.738      0.0700352            637           4484          35858
           0.0088        26.2344      0.0705078            378           4514          36100
           0.0088        25.3036      0.0717148            531           4591          36718
           0.0088        26.3428      0.0701914            468           4492          35938
           0.0088        25.5981      0.0689668            262           4416          35311
           0.0088        26.6886      0.0702324            521           4492          35959
           0.0088        23.6453      0.0685742            269           4392          35110
           0.0088        27.1534      0.0695547            289           4451          35612
           0.0088        26.0838      0.0702949            401           4498          35991
           0.0088        25.2229      0.0679355            278           4347          34783
           0.0088        25.8549      0.0716465            308           4590          36683
           0.0088        29.7385      0.0719687            340           4601          36848
           0.0088        26.8626      0.0698086            506           4469          35742
           0.0088        26.6483      0.0703828            430           4504          36036
           0.0088         28.799      0.0710918            371           4548          36399
           0.0096        31.4481      0.0770527            490           4934          39451
           0.0096        28.3822      0.0771543            331           4937          39503
           0.0096        30.4735      0.0767695            698           4914          39306
           0.0096        31.6915      0.0776992            456           4973          39782
           0.0096        34.6343      0.0763359            709           4886          39084
           0.0096        31.1508      0.0772324            358           4940          39543
           0.0096        31.1149      0.0779824            589           4988          39927
           0.0096        30.0163      0.0768496            459           4922          39347
           0.0096        33.9304       0.078627           1139           5031          40257
           0.0096        32.2613      0.0778828            718           4986          39876
           0.0096        37.8492      0.0783535           1076           5013          40117
           0.0096        31.7094      0.0776387            439           4969          39751
           0.0096        30.6047      0.0758281            997           4855          38824
           0.0096        34.4542      0.0753105            883           4819          38559
           0.0096        32.6033      0.0779648            984           4989          39918
           0.0096        36.2761       0.075918           1396           4860          38870
           0.0096        36.2487      0.0748555           1197           4789          38326
           0.0096        31.7337      0.0774961            574           4956          39678
           0.0096        32.9432      0.0767129            663           4910          39277
           0.0096        33.5374       0.078041            640           4991          39957
           0.0104         35.481      0.0854336           1178           5468          43742
           0.0104         35.303       0.083043            838           5314          42518
           0.0104         32.599      0.0822461            366           5260          42110
           0.0104        58.9342      0.0849648           2145           5437          43502
           0.0104        36.5848      0.0832109            752           5327          42604
           0.0104         32.439      0.0815781            453           5221          41768
           0.0104        49.2785      0.0842891           1429           5397          43156
           0.0104        47.1721       0.085582           1988           5478          43818
           0.0104         37.863      0.0827969           1380           5299          42392
           0.0104        43.1846      0.0835879           1024           5347          42797
           0.0104        32.9591      0.0832559            576           5328          42627
           0.0104        36.1291      0.0834355            744           5345          42719
           0.0104        41.9393      0.0833555           1113           5335          42678
           0.0104         55.273      0.0838711           2077           5370          42942
           0.0104        37.9413      0.0825352           1014           5279          42258
           0.0104        42.8214      0.0850313            925           5443          43536
           0.0104        38.9778      0.0843848            522           5402          43205
           0.0104        36.7753      0.0832813            535           5331          42640
           0.0104        31.5973      0.0819297            595           5242          41948
           0.0104        43.4048      0.0828359            999           5299          42412
           0.0112        55.4086      0.0886543           1684           5673          45391
           0.0112        50.7164      0.0897695           1356           5745          45962
           0.0112        74.1236      0.0908789           2832           5818          46530
           0.0112         44.004      0.0869609            805           5567          44524
           0.0112        46.3355      0.0884766            830           5660          45300
           0.0112        55.7457      0.0906641           1108           5801          46420
           0.0112        54.6695       0.089666           1236           5740          45909
           0.0112        47.9833      0.0880293           1258           5635          45071
           0.0112        60.0761      0.0897832           1811           5746          45969
           0.0112        49.8858      0.0886699           1181           5674          45399
           0.0112        59.5099      0.0907051           2079           5803          46441
           0.0112        53.3377       0.089459           1555           5727          45803
           0.0112        50.3081      0.0891992           1055           5706          45670
           0.0112        48.0731        0.08975           1254           5744          45952
           0.0112        38.8217      0.0895703            822           5731          45860
           0.0112        45.8118      0.0899395           1283           5756          46049
           0.0112        55.9437      0.0901758           1805           5773          46170
           0.0112        54.0519      0.0917754            707           5874          46989
           0.0112        61.5629      0.0907324           1166           5804          46455
           0.0112        52.3736      0.0906914           1368           5805          46434
            0.012        82.2385      0.0960742           3062           6148          49190
            0.012        55.9032      0.0952734           1022           6097          48780
            0.012        92.6314      0.0952539           2741           6096          48770
            0.012        166.304       0.095459           3650           6107          48875
            0.012        128.313      0.0949512           3179           6079          48615
            0.012        105.191      0.0959707           2432           6145          49137
            0.012        101.512      0.0967832           2592           6191          49553
            0.012        75.1638      0.0955898           1913           6119          48942
            0.012        76.2432      0.0954004           1219           6103          48845
            0.012         64.777      0.0969707           1264           6206          49649
            0.012        69.7345      0.0942129           1791           6031          48237
            0.012        52.5274      0.0940664           1106           6020          48162
            0.012        50.5237      0.0970742           1088           6213          49702
            0.012        87.0468      0.0962617           3142           6160          49286
            0.012        76.9446      0.0964082           1559           6170          49361
            0.012        105.341      0.0956094           2830           6123          48952
            0.012        65.5496       0.096248            896           6159          49279
            0.012        93.9174      0.0959434           1825           6141          49123
            0.012        122.139       0.097418           2514           6236          49878
            0.012        117.885      0.0957129           3289           6128          49005
           0.0128        108.683      0.0993711           2294           6361          50878
           0.0128        165.338       0.101084           2564           6470          51755
           0.0128        119.337       0.101629           2517           6505          52034
           0.0128        123.057       0.102598           3041           6564          52530
           0.0128        126.302       0.101064           3091           6465          51745
           0.0128        121.984       0.101062           3420           6466          51744
           0.0128        75.5942       0.101029           2074           6466          51727
           0.0128        136.831       0.101682           2492           6508          52061
           0.0128        173.397       0.102162           4043           6538          52307
           0.0128        113.807       0.100016           2049           6401          51208
           0.0128        105.742       0.100582           3113           6433          51498
           0.0128        107.932       0.103133           1997           6604          52804
           0.0128        172.014       0.100707           3763           6448          51562
           0.0128         117.97       0.102502           2767           6563          52481
           0.0128        141.322       0.100242           2213           6414          51324
           0.0128        109.255       0.101703           1874           6511          52072
           0.0128        69.8884       0.101633           1140           6504          52036
           0.0128        143.878       0.100445           3284           6427          51428
           0.0128        109.054      0.0993574           4022           6358          50871
           0.0128        136.612       0.100881           2180           6456          51651
           0.0136        199.418       0.106236           4649           6799          54393
           0.0136         202.94       0.106854           4972           6837          54709
           0.0136        185.032       0.106563           2955           6817          54560
           0.0136        184.482       0.106725           5352           6829          54643
           0.0136        175.255       0.105078           3614           6726          53800
           0.0136        150.598        0.10624           3117           6800          54395
           0.0136        161.686         0.1035           3373           6624          52992
           0.0136        185.237       0.106121           4286           6790          54334
           0.0136        221.903       0.106963           5016           6849          54765
           0.0136        158.539       0.105805           4190           6770          54172
           0.0136        228.415       0.105738           5782           6769          54138
           0.0136        196.137       0.107801           4095           6899          55194
           0.0136        251.214        0.10527           5396           6738          53898
           0.0136        214.128       0.106084           4818           6791          54315
           0.0136        197.109       0.103521           4348           6625          53003
           0.0136        164.554       0.106176           3454           6796          54362
           0.0136        201.724       0.104736           5057           6702          53625
           0.0136        190.275       0.105645           4617           6761          54090
           0.0136        187.156       0.105453           6007           6752          53992
           0.0136        150.091       0.104129           3437           6667          53314
           0.0144        261.079       0.108998           4661           6973          55807
           0.0144        237.369       0.109939           5204           7040          56289
           0.0144        263.486        0.10784           5384           6902          55214
           0.0144        287.054        0.11101           5130           7107          56837
           0.0144        259.671       0.110021           5989           7045          56331
           0.0144        266.871       0.108537           6497           6945          55571
           0.0144        245.398       0.110805           4266           7092          56732
           0.0144        241.601       0.110701           6080           7086          56679
           0.0144        266.133       0.109746           5246           7022          56190
           0.0144        237.784       0.109764           5798           7025          56199
           0.0144        209.418       0.110846           4323           7092          56753
           0.0144        191.195        0.10908           4498           6982          55849
           0.0144        269.666       0.113684           5135           7276          58206
           0.0144        292.431       0.110619           4805           7080          56637
           0.0144         317.03       0.108473           7051           6945          55538
           0.0144        234.618       0.110139           5438           7049          56391
           0.0144         272.83       0.111582           5267           7138          57130
           0.0144        256.836       0.109693           4520           7019          56163
           0.0144        257.469       0.110961           4391           7104          56812
           0.0144        274.053       0.109937           5109           7035          56288
           0.0152        320.139       0.115562           6592           7398          59168
           0.0152        353.897       0.111734           6237           7156          57208
           0.0152        342.749       0.113682           6555           7278          58205
           0.0152        300.181       0.114615           5462           7334          58683
           0.0152         310.67        0.11234           7190           7191          57518
           0.0152        287.747       0.114789           6348           7349          58772
           0.0152        299.104       0.113127           5566           7238          57921
           0.0152        318.163        0.11532           5576           7377          59044
           0.0152        276.423       0.113848           5791           7285          58290
           0.0152        290.609       0.113104           5525           7239          57909
           0.0152        300.597       0.114711           6094           7343          58732
           0.0152        353.653       0.112371           5637           7193          57534
           0.0152        313.426       0.116375           6375           7452          59584
           0.0152        386.109       0.112959           5687           7229          57835
           0.0152         332.41       0.113193           6600           7243          57955
           0.0152        318.843       0.113104           6196           7237          57909
           0.0152        324.847       0.115127           6254           7369          58945
           0.0152        317.294       0.115336           6424           7380          59052
           0.0152        322.212       0.113121           6441           7240          57918
           0.0152         335.34        0.11582           5442           7413          59300
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
