#!/bin/bash

touch /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Output_Measures/AmygdalaTargetMask-LHAmygdala-Smoothed-Measures-Cluster1.csv
echo "Case, FD_mean_1, FD_mean_2, FD_mean_3, FD_mean_5, FD_mean_8, FD_mean_10, FD_mean_15, FC_mean_1, FC_mean_2, FC_mean_3, FC_mean_5, FC_mean_8, FC_mean_10, FC_mean_15, FDC_mean_1, FDC_mean_2, FDC_mean_3, FDC_mean_5, FDC_mean_8, FDC_mean_10, FDC_mean_15" >> /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Output_Measures/AmygdalaTargetMask-LHAmygdala-Smoothed-Measures-Cluster1.csv

touch /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Output_Measures/AmygdalaTargetMask-LHAmygdala-Smoothed-Measures-Cluster2.csv
echo "Case, FD_mean_1, FD_mean_2, FD_mean_3, FD_mean_5, FD_mean_8, FD_mean_10, FD_mean_15, FC_mean_1, FC_mean_2, FC_mean_3, FC_mean_5, FC_mean_8, FC_mean_10, FC_mean_15, FDC_mean_1, FDC_mean_2, FDC_mean_3, FDC_mean_5, FDC_mean_8, FDC_mean_10, FDC_mean_15" >> /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Output_Measures/AmygdalaTargetMask-LHAmygdala-Smoothed-Measures-Cluster2.csv
 

for SUBJ in sub-ZAPR01C193 sub-ZAPR01C309 sub-ZAPR01C412 sub-ZAPR01C650 sub-ZAPR01C765 sub-ZAPR01C991 sub-ZAPR01P552 sub-ZAPR01C207 sub-ZAPR01C311 sub-ZAPR01C426 sub-ZAPR01C656 sub-ZAPR01P120 sub-ZAPR01P581 sub-ZAPR01P998 sub-ZAPR01C105 sub-ZAPR01C209 sub-ZAPR01C318 sub-ZAPR01C427 sub-ZAPR01C811 sub-ZAPR01P188 sub-ZAPR01P594 sub-ZAPR01C127 sub-ZAPR01C210 sub-ZAPR01C328 sub-ZAPR01C468 sub-ZAPR01C820 sub-ZAPR01P287 sub-ZAPR01P672 sub-ZAPR01C130 sub-ZAPR01C219 sub-ZAPR01C347 sub-ZAPR01C470 sub-ZAPR01C714 sub-ZAPR01P718 sub-ZAPR01C134 sub-ZAPR01C220 sub-ZAPR01C351 sub-ZAPR01C472 sub-ZAPR01C891 sub-ZAPR01P363 sub-ZAPR01P726 sub-ZAPR01C140 sub-ZAPR01C262 sub-ZAPR01C354 sub-ZAPR01C527 sub-ZAPR01C750 sub-ZAPR01P372 sub-ZAPR01P752 sub-ZAPR01C148 sub-ZAPR01C264 sub-ZAPR01C540 sub-ZAPR01C759 sub-ZAPR01C915 sub-ZAPR01P396 sub-ZAPR01P802 sub-ZAPR01C172 sub-ZAPR01C269 sub-ZAPR01C584 sub-ZAPR01C763 sub-ZAPR01C952 sub-ZAPR01P478 sub-ZAPR01P831 sub-ZAPR01C178 sub-ZAPR01C305 sub-ZAPR01P526 ; do

for cluster in 1 2; do


FD1=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FD-1-smoothed/$SUBJ-FD.mif -output mean)
FD2=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FD-2-smoothed/$SUBJ-FD.mif -output mean)
FD3=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FD-3-smoothed/$SUBJ-FD.mif -output mean)
FD5=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FD-5-smoothed/$SUBJ-FD.mif -output mean)
FD8=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FD-8-smoothed/$SUBJ-FD.mif -output mean)
FD10=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FD-10-smoothed/$SUBJ-FD.mif -output mean)
FD15=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FD-15-smoothed/$SUBJ-FD.mif -output mean)

FC1=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FC-1-smoothed/$SUBJ-FC.mif -output mean)
FC2=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FC-2-smoothed/$SUBJ-FC.mif -output mean)
FC3=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FC-3-smoothed/$SUBJ-FC.mif -output mean)
FC5=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FC-5-smoothed/$SUBJ-FC.mif -output mean)
FC8=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FC-8-smoothed/$SUBJ-FC.mif -output mean)
FC10=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FC-10-smoothed/$SUBJ-FC.mif -output mean)
FC15=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FC-15-smoothed/$SUBJ-FC.mif -output mean)

FDC1=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FDC-1-smoothed/$SUBJ-FDC.mif -output mean)
FDC2=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FDC-2-smoothed/$SUBJ-FDC.mif -output mean)
FDC3=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FDC-3-smoothed/$SUBJ-FDC.mif -output mean)
FDC5=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FDC-5-smoothed/$SUBJ-FDC.mif -output mean)
FDC8=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FDC-8-smoothed/$SUBJ-FDC.mif -output mean)
FDC10=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FDC-10-smoothed/$SUBJ-FDC.mif -output mean)
FDC15=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/FDC-15-smoothed/$SUBJ-FDC.mif -output mean)

echo "$SUBJ, $FD1, $FD2, $FD3, $FD5, $FD8, $FD10, $FD15, $FC1, $FC2, $FC3, $FC5, $FC8, $FC10, $FC15, $FDC1, $FDC2, $FDC3, $FDC5, $FDC8, $FDC10, $FDC15" >> /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Output_Measures/AmygdalaTargetMask-LHAmygdala-Smoothed-Measures-Cluster$cluster.csv
done
done
