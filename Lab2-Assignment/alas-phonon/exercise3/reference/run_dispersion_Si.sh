#!/bin/bash


ESPRESSO_DIR="/home/bonini/PW/qe-cvs-08-07-2009/q-e-scm-2009-07-08/espresso"

MATDYN_COMMAND="$ESPRESSO_DIR/bin/matdyn.x"
PLOTBAND_COMMAND="$ESPRESSO_DIR/bin/plotband.x"

NAME="si"
ECHO="echo"
 
cat > matdyn_disp.in <<EOF
 &input
    asr='simple',  amass(1)=28.0855, 
    flfrc='$NAME.444.fc', flfrq='$NAME.freq'
 /
396
    0.000000    0.000000    0.000000    0.000000
    0.012658    0.000000    0.000000    0.012658
    0.025316    0.000000    0.000000    0.025316
    0.037975    0.000000    0.000000    0.037975
    0.050633    0.000000    0.000000    0.050633
    0.063291    0.000000    0.000000    0.063291
    0.075949    0.000000    0.000000    0.075949
    0.088608    0.000000    0.000000    0.088608
    0.101266    0.000000    0.000000    0.101266
    0.113924    0.000000    0.000000    0.113924
    0.126582    0.000000    0.000000    0.126582
    0.139241    0.000000    0.000000    0.139241
    0.151899    0.000000    0.000000    0.151899
    0.164557    0.000000    0.000000    0.164557
    0.177215    0.000000    0.000000    0.177215
    0.189873    0.000000    0.000000    0.189873
    0.202532    0.000000    0.000000    0.202532
    0.215190    0.000000    0.000000    0.215190
    0.227848    0.000000    0.000000    0.227848
    0.240506    0.000000    0.000000    0.240506
    0.253165    0.000000    0.000000    0.253165
    0.265823    0.000000    0.000000    0.265823
    0.278481    0.000000    0.000000    0.278481
    0.291139    0.000000    0.000000    0.291139
    0.303797    0.000000    0.000000    0.303797
    0.316456    0.000000    0.000000    0.316456
    0.329114    0.000000    0.000000    0.329114
    0.341772    0.000000    0.000000    0.341772
    0.354430    0.000000    0.000000    0.354430
    0.367089    0.000000    0.000000    0.367089
    0.379747    0.000000    0.000000    0.379747
    0.392405    0.000000    0.000000    0.392405
    0.405063    0.000000    0.000000    0.405063
    0.417722    0.000000    0.000000    0.417722
    0.430380    0.000000    0.000000    0.430380
    0.443038    0.000000    0.000000    0.443038
    0.455696    0.000000    0.000000    0.455696
    0.468354    0.000000    0.000000    0.468354
    0.481013    0.000000    0.000000    0.481013
    0.493671    0.000000    0.000000    0.493671
    0.506329    0.000000    0.000000    0.506329
    0.518987    0.000000    0.000000    0.518987
    0.531646    0.000000    0.000000    0.531646
    0.544304    0.000000    0.000000    0.544304
    0.556962    0.000000    0.000000    0.556962
    0.569620    0.000000    0.000000    0.569620
    0.582278    0.000000    0.000000    0.582278
    0.594937    0.000000    0.000000    0.594937
    0.607595    0.000000    0.000000    0.607595
    0.620253    0.000000    0.000000    0.620253
    0.632911    0.000000    0.000000    0.632911
    0.645570    0.000000    0.000000    0.645570
    0.658228    0.000000    0.000000    0.658228
    0.670886    0.000000    0.000000    0.670886
    0.683544    0.000000    0.000000    0.683544
    0.696203    0.000000    0.000000    0.696203
    0.708861    0.000000    0.000000    0.708861
    0.721519    0.000000    0.000000    0.721519
    0.734177    0.000000    0.000000    0.734177
    0.746835    0.000000    0.000000    0.746835
    0.759494    0.000000    0.000000    0.759494
    0.772152    0.000000    0.000000    0.772152
    0.784810    0.000000    0.000000    0.784810
    0.797468    0.000000    0.000000    0.797468
    0.810127    0.000000    0.000000    0.810127
    0.822785    0.000000    0.000000    0.822785
    0.835443    0.000000    0.000000    0.835443
    0.848101    0.000000    0.000000    0.848101
    0.860759    0.000000    0.000000    0.860759
    0.873418    0.000000    0.000000    0.873418
    0.886076    0.000000    0.000000    0.886076
    0.898734    0.000000    0.000000    0.898734
    0.911392    0.000000    0.000000    0.911392
    0.924051    0.000000    0.000000    0.924051
    0.936709    0.000000    0.000000    0.936709
    0.949367    0.000000    0.000000    0.949367
    0.962025    0.000000    0.000000    0.962025
    0.974684    0.000000    0.000000    0.974684
    0.987342    0.000000    0.000000    0.987342
    1.000000    0.000000    0.000000    1.000000
    1.000000    0.006329    0.000000    1.006329
    1.000000    0.012658    0.000000    1.012658
    1.000000    0.018987    0.000000    1.018987
    1.000000    0.025316    0.000000    1.025316
    1.000000    0.031646    0.000000    1.031646
    1.000000    0.037975    0.000000    1.037975
    1.000000    0.044304    0.000000    1.044304
    1.000000    0.050633    0.000000    1.050633
    1.000000    0.056962    0.000000    1.056962
    1.000000    0.063291    0.000000    1.063291
    1.000000    0.069620    0.000000    1.069620
    1.000000    0.075949    0.000000    1.075949
    1.000000    0.082278    0.000000    1.082278
    1.000000    0.088608    0.000000    1.088608
    1.000000    0.094937    0.000000    1.094937
    1.000000    0.101266    0.000000    1.101266
    1.000000    0.107595    0.000000    1.107595
    1.000000    0.113924    0.000000    1.113924
    1.000000    0.120253    0.000000    1.120253
    1.000000    0.126582    0.000000    1.126582
    1.000000    0.132911    0.000000    1.132911
    1.000000    0.139241    0.000000    1.139241
    1.000000    0.145570    0.000000    1.145570
    1.000000    0.151899    0.000000    1.151899
    1.000000    0.158228    0.000000    1.158228
    1.000000    0.164557    0.000000    1.164557
    1.000000    0.170886    0.000000    1.170886
    1.000000    0.177215    0.000000    1.177215
    1.000000    0.183544    0.000000    1.183544
    1.000000    0.189873    0.000000    1.189873
    1.000000    0.196203    0.000000    1.196203
    1.000000    0.202532    0.000000    1.202532
    1.000000    0.208861    0.000000    1.208861
    1.000000    0.215190    0.000000    1.215190
    1.000000    0.221519    0.000000    1.221519
    1.000000    0.227848    0.000000    1.227848
    1.000000    0.234177    0.000000    1.234177
    1.000000    0.240506    0.000000    1.240506
    1.000000    0.246835    0.000000    1.246835
    1.000000    0.253165    0.000000    1.253165
    1.000000    0.259494    0.000000    1.259494
    1.000000    0.265823    0.000000    1.265823
    1.000000    0.272152    0.000000    1.272152
    1.000000    0.278481    0.000000    1.278481
    1.000000    0.284810    0.000000    1.284810
    1.000000    0.291139    0.000000    1.291139
    1.000000    0.297468    0.000000    1.297468
    1.000000    0.303797    0.000000    1.303797
    1.000000    0.310127    0.000000    1.310127
    1.000000    0.316456    0.000000    1.316456
    1.000000    0.322785    0.000000    1.322785
    1.000000    0.329114    0.000000    1.329114
    1.000000    0.335443    0.000000    1.335443
    1.000000    0.341772    0.000000    1.341772
    1.000000    0.348101    0.000000    1.348101
    1.000000    0.354430    0.000000    1.354430
    1.000000    0.360759    0.000000    1.360759
    1.000000    0.367089    0.000000    1.367089
    1.000000    0.373418    0.000000    1.373418
    1.000000    0.379747    0.000000    1.379747
    1.000000    0.386076    0.000000    1.386076
    1.000000    0.392405    0.000000    1.392405
    1.000000    0.398734    0.000000    1.398734
    1.000000    0.405063    0.000000    1.405063
    1.000000    0.411392    0.000000    1.411392
    1.000000    0.417722    0.000000    1.417722
    1.000000    0.424051    0.000000    1.424051
    1.000000    0.430380    0.000000    1.430380
    1.000000    0.436709    0.000000    1.436709
    1.000000    0.443038    0.000000    1.443038
    1.000000    0.449367    0.000000    1.449367
    1.000000    0.455696    0.000000    1.455696
    1.000000    0.462025    0.000000    1.462025
    1.000000    0.468354    0.000000    1.468354
    1.000000    0.474684    0.000000    1.474684
    1.000000    0.481013    0.000000    1.481013
    1.000000    0.487342    0.000000    1.487342
    1.000000    0.493671    0.000000    1.493671
    1.000000    0.500000    0.000000    1.500000
    1.000000    0.506329    0.000000    1.506329
    1.000000    0.512658    0.000000    1.512658
    1.000000    0.518987    0.000000    1.518987
    1.000000    0.525316    0.000000    1.525316
    1.000000    0.531646    0.000000    1.531646
    1.000000    0.537975    0.000000    1.537975
    1.000000    0.544304    0.000000    1.544304
    1.000000    0.550633    0.000000    1.550633
    1.000000    0.556962    0.000000    1.556962
    1.000000    0.563291    0.000000    1.563291
    1.000000    0.569620    0.000000    1.569620
    1.000000    0.575949    0.000000    1.575949
    1.000000    0.582278    0.000000    1.582278
    1.000000    0.588608    0.000000    1.588608
    1.000000    0.594937    0.000000    1.594937
    1.000000    0.601266    0.000000    1.601266
    1.000000    0.607595    0.000000    1.607595
    1.000000    0.613924    0.000000    1.613924
    1.000000    0.620253    0.000000    1.620253
    1.000000    0.626582    0.000000    1.626582
    1.000000    0.632911    0.000000    1.632911
    1.000000    0.639241    0.000000    1.639241
    1.000000    0.645570    0.000000    1.645570
    1.000000    0.651899    0.000000    1.651899
    1.000000    0.658228    0.000000    1.658228
    1.000000    0.664557    0.000000    1.664557
    1.000000    0.670886    0.000000    1.670886
    1.000000    0.677215    0.000000    1.677215
    1.000000    0.683544    0.000000    1.683544
    1.000000    0.689873    0.000000    1.689873
    1.000000    0.696203    0.000000    1.696203
    1.000000    0.702532    0.000000    1.702532
    1.000000    0.708861    0.000000    1.708861
    1.000000    0.715190    0.000000    1.715190
    1.000000    0.721519    0.000000    1.721519
    1.000000    0.727848    0.000000    1.727848
    1.000000    0.734177    0.000000    1.734177
    1.000000    0.740506    0.000000    1.740506
    1.000000    0.746835    0.000000    1.746835
    1.000000    0.753165    0.000000    1.753165
    1.000000    0.759494    0.000000    1.759494
    1.000000    0.765823    0.000000    1.765823
    1.000000    0.772152    0.000000    1.772152
    1.000000    0.778481    0.000000    1.778481
    1.000000    0.784810    0.000000    1.784810
    1.000000    0.791139    0.000000    1.791139
    1.000000    0.797468    0.000000    1.797468
    1.000000    0.803797    0.000000    1.803797
    1.000000    0.810127    0.000000    1.810127
    1.000000    0.816456    0.000000    1.816456
    1.000000    0.822785    0.000000    1.822785
    1.000000    0.829114    0.000000    1.829114
    1.000000    0.835443    0.000000    1.835443
    1.000000    0.841772    0.000000    1.841772
    1.000000    0.848101    0.000000    1.848101
    1.000000    0.854430    0.000000    1.854430
    1.000000    0.860760    0.000000    1.860760
    1.000000    0.867089    0.000000    1.867089
    1.000000    0.873418    0.000000    1.873418
    1.000000    0.879747    0.000000    1.879747
    1.000000    0.886076    0.000000    1.886076
    1.000000    0.892405    0.000000    1.892405
    1.000000    0.898734    0.000000    1.898734
    1.000000    0.905063    0.000000    1.905063
    1.000000    0.911392    0.000000    1.911392
    1.000000    0.917722    0.000000    1.917722
    1.000000    0.924051    0.000000    1.924051
    1.000000    0.930380    0.000000    1.930380
    1.000000    0.936709    0.000000    1.936709
    1.000000    0.943038    0.000000    1.943038
    1.000000    0.949367    0.000000    1.949367
    1.000000    0.955696    0.000000    1.955696
    1.000000    0.962025    0.000000    1.962025
    1.000000    0.968354    0.000000    1.968354
    1.000000    0.974684    0.000000    1.974684
    1.000000    0.981013    0.000000    1.981013
    1.000000    0.987342    0.000000    1.987342
    1.000000    0.993671    0.000000    1.993671
    1.000000    1.000000    0.000000    2.000000
    0.987342    0.987342    0.000000    2.017901
    0.974684    0.974684    0.000000    2.035803
    0.962025    0.962025    0.000000    2.053704
    0.949367    0.949367    0.000000    2.071606
    0.936709    0.936709    0.000000    2.089507
    0.924051    0.924051    0.000000    2.107409
    0.911392    0.911392    0.000000    2.125310
    0.898734    0.898734    0.000000    2.143211
    0.886076    0.886076    0.000000    2.161113
    0.873418    0.873418    0.000000    2.179014
    0.860759    0.860759    0.000000    2.196916
    0.848101    0.848101    0.000000    2.214817
    0.835443    0.835443    0.000000    2.232719
    0.822785    0.822785    0.000000    2.250620
    0.810127    0.810127    0.000000    2.268522
    0.797468    0.797468    0.000000    2.286423
    0.784810    0.784810    0.000000    2.304324
    0.772152    0.772152    0.000000    2.322226
    0.759494    0.759494    0.000000    2.340127
    0.746835    0.746835    0.000000    2.358029
    0.734177    0.734177    0.000000    2.375930
    0.721519    0.721519    0.000000    2.393832
    0.708861    0.708861    0.000000    2.411733
    0.696203    0.696203    0.000000    2.429634
    0.683544    0.683544    0.000000    2.447536
    0.670886    0.670886    0.000000    2.465437
    0.658228    0.658228    0.000000    2.483339
    0.645570    0.645570    0.000000    2.501240
    0.632911    0.632911    0.000000    2.519142
    0.620253    0.620253    0.000000    2.537043
    0.607595    0.607595    0.000000    2.554945
    0.594937    0.594937    0.000000    2.572846
    0.582278    0.582278    0.000000    2.590747
    0.569620    0.569620    0.000000    2.608649
    0.556962    0.556962    0.000000    2.626550
    0.544304    0.544304    0.000000    2.644452
    0.531646    0.531646    0.000000    2.662353
    0.518987    0.518987    0.000000    2.680255
    0.506329    0.506329    0.000000    2.698156
    0.493671    0.493671    0.000000    2.716057
    0.481013    0.481013    0.000000    2.733959
    0.468354    0.468354    0.000000    2.751860
    0.455696    0.455696    0.000000    2.769762
    0.443038    0.443038    0.000000    2.787663
    0.430380    0.430380    0.000000    2.805565
    0.417722    0.417722    0.000000    2.823466
    0.405063    0.405063    0.000000    2.841368
    0.392405    0.392405    0.000000    2.859269
    0.379747    0.379747    0.000000    2.877170
    0.367089    0.367089    0.000000    2.895072
    0.354430    0.354430    0.000000    2.912973
    0.341772    0.341772    0.000000    2.930875
    0.329114    0.329114    0.000000    2.948776
    0.316456    0.316456    0.000000    2.966678
    0.303797    0.303797    0.000000    2.984579
    0.291139    0.291139    0.000000    3.002480
    0.278481    0.278481    0.000000    3.020382
    0.265823    0.265823    0.000000    3.038283
    0.253165    0.253165    0.000000    3.056185
    0.240506    0.240506    0.000000    3.074086
    0.227848    0.227848    0.000000    3.091988
    0.215190    0.215190    0.000000    3.109889
    0.202532    0.202532    0.000000    3.127791
    0.189873    0.189873    0.000000    3.145692
    0.177215    0.177215    0.000000    3.163593
    0.164557    0.164557    0.000000    3.181495
    0.151899    0.151899    0.000000    3.199396
    0.139241    0.139241    0.000000    3.217298
    0.126582    0.126582    0.000000    3.235199
    0.113924    0.113924    0.000000    3.253101
    0.101266    0.101266    0.000000    3.271002
    0.088608    0.088608    0.000000    3.288903
    0.075949    0.075949    0.000000    3.306805
    0.063291    0.063291    0.000000    3.324706
    0.050633    0.050633    0.000000    3.342608
    0.037975    0.037975    0.000000    3.360509
    0.025316    0.025316    0.000000    3.378411
    0.012658    0.012658    0.000000    3.396312
    0.000000    0.000000    0.000000    3.414214
    0.006329    0.006329    0.006329    3.425176
    0.012658    0.012658    0.012658    3.436138
    0.018987    0.018987    0.018987    3.447101
    0.025316    0.025316    0.025316    3.458063
    0.031646    0.031646    0.031646    3.469025
    0.037975    0.037975    0.037975    3.479988
    0.044304    0.044304    0.044304    3.490950
    0.050633    0.050633    0.050633    3.501912
    0.056962    0.056962    0.056962    3.512875
    0.063291    0.063291    0.063291    3.523837
    0.069620    0.069620    0.069620    3.534799
    0.075949    0.075949    0.075949    3.545762
    0.082278    0.082278    0.082278    3.556724
    0.088608    0.088608    0.088608    3.567686
    0.094937    0.094937    0.094937    3.578649
    0.101266    0.101266    0.101266    3.589611
    0.107595    0.107595    0.107595    3.600573
    0.113924    0.113924    0.113924    3.611536
    0.120253    0.120253    0.120253    3.622498
    0.126582    0.126582    0.126582    3.633461
    0.132911    0.132911    0.132911    3.644423
    0.139241    0.139241    0.139241    3.655385
    0.145570    0.145570    0.145570    3.666348
    0.151899    0.151899    0.151899    3.677310
    0.158228    0.158228    0.158228    3.688272
    0.164557    0.164557    0.164557    3.699235
    0.170886    0.170886    0.170886    3.710197
    0.177215    0.177215    0.177215    3.721159
    0.183544    0.183544    0.183544    3.732122
    0.189873    0.189873    0.189873    3.743084
    0.196203    0.196203    0.196203    3.754046
    0.202532    0.202532    0.202532    3.765009
    0.208861    0.208861    0.208861    3.775971
    0.215190    0.215190    0.215190    3.786933
    0.221519    0.221519    0.221519    3.797896
    0.227848    0.227848    0.227848    3.808858
    0.234177    0.234177    0.234177    3.819820
    0.240506    0.240506    0.240506    3.830783
    0.246835    0.246835    0.246835    3.841745
    0.253165    0.253165    0.253165    3.852707
    0.259494    0.259494    0.259494    3.863670
    0.265823    0.265823    0.265823    3.874632
    0.272152    0.272152    0.272152    3.885594
    0.278481    0.278481    0.278481    3.896557
    0.284810    0.284810    0.284810    3.907519
    0.291139    0.291139    0.291139    3.918482
    0.297468    0.297468    0.297468    3.929444
    0.303797    0.303797    0.303797    3.940406
    0.310127    0.310127    0.310127    3.951369
    0.316456    0.316456    0.316456    3.962331
    0.322785    0.322785    0.322785    3.973293
    0.329114    0.329114    0.329114    3.984256
    0.335443    0.335443    0.335443    3.995218
    0.341772    0.341772    0.341772    4.006180
    0.348101    0.348101    0.348101    4.017143
    0.354430    0.354430    0.354430    4.028105
    0.360759    0.360759    0.360759    4.039067
    0.367089    0.367089    0.367089    4.050030
    0.373418    0.373418    0.373418    4.060992
    0.379747    0.379747    0.379747    4.071954
    0.386076    0.386076    0.386076    4.082917
    0.392405    0.392405    0.392405    4.093879
    0.398734    0.398734    0.398734    4.104841
    0.405063    0.405063    0.405063    4.115804
    0.411392    0.411392    0.411392    4.126766
    0.417722    0.417722    0.417722    4.137728
    0.424051    0.424051    0.424051    4.148691
    0.430380    0.430380    0.430380    4.159653
    0.436709    0.436709    0.436709    4.170615
    0.443038    0.443038    0.443038    4.181578
    0.449367    0.449367    0.449367    4.192540
    0.455696    0.455696    0.455696    4.203503
    0.462025    0.462025    0.462025    4.214465
    0.468354    0.468354    0.468354    4.225427
    0.474684    0.474684    0.474684    4.236390
    0.481013    0.481013    0.481013    4.247352
    0.487342    0.487342    0.487342    4.258314
    0.493671    0.493671    0.493671    4.269277
    0.500000    0.500000    0.500000    4.280239
EOF

$ECHO "  recalculating omega(q) from C(R)..."
$MATDYN_COMMAND < matdyn_disp.in > matdyn_disp.out

cat > plotband.in <<EOF
$NAME.freq
0 600
freq.plot
freq.ps
0.0
0.0 
0.1
EOF

$ECHO "  plotting the phonon dispersions..."
$PLOTBAND_COMMAND < plotband.in > /dev/null

