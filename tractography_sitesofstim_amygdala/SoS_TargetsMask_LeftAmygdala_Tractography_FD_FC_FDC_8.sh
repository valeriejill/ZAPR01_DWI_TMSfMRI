#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels

touch /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Output_Measures/AmygdalaTargetsMask-LHAmygdala-Measures.csv
echo "Case, FD_mean_2, FD_mean_4, FD_mean_5, FD_mean_6, FD_mean_8, FD_mean_10, FD_mean_12, FC_mean_2, FC_mean_4, FC_mean_5, FC_mean_6, FC_mean_8, FC_mean_10, FC_mean_12, FDC_mean_2, FDC_mean_4, FDC_mean_5, FDC_mean_6, FDC_mean_8, FDC_mean_10, FDC_mean_12" >> /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Output_Measures/AmygdalaTargetsMask-LHAmygdala-Measures.csv 

cd $ZAP/subject_data

for SUBJ in sub-ZAPR01C* ; do

FD2=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FD-2/$SUBJ-FD.mif -output mean)
FD4=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FD-4/$SUBJ-FD.mif -output mean)
FD5=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FD-5/$SUBJ-FD.mif -output mean)
FD6=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FD-6/$SUBJ-FD.mif -output mean)
FD8=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FD-8/$SUBJ-FD.mif -output mean)
FD10=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FD-10/$SUBJ-FD.mif -output mean)
FD12=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FD-12/$SUBJ-FD.mif -output mean)

FC2=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FC-2/$SUBJ-FC.mif -output mean)
FC4=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FC-4/$SUBJ-FC.mif -output mean)
FC5=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FC-5/$SUBJ-FC.mif -output mean)
FC6=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FC-6/$SUBJ-FC.mif -output mean)
FC8=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FC-8/$SUBJ-FC.mif -output mean)
FC10=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FC-10/$SUBJ-FC.mif -output mean)
FC12=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FC-12/$SUBJ-FC.mif -output mean)

FDC2=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FDC-2/$SUBJ-FDC.mif -output mean)
FDC4=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FDC-4/$SUBJ-FDC.mif -output mean)
FDC5=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FDC-5/$SUBJ-FDC.mif -output mean)
FDC6=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FDC-6/$SUBJ-FDC.mif -output mean)
FDC8=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FDC-8/$SUBJ-FDC.mif -output mean)
FDC10=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FDC-10/$SUBJ-FDC.mif -output mean)
FDC12=$(/storage/3Tissue/bin/mrstats /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/FDC-12/$SUBJ-FDC.mif -output mean)

echo "$SUBJ, $FD2, $FD4, $FD5, $FD6, $FD8, $FD10, $FD12, $FC2, $FC4, $FC5, $FC6, $FC8, $FC10, $FC12, $FDC2, $FDC4, $FDC5, $FDC6, $FDC8, $FDC10, $FDC12" >> /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Output_Measures/AmygdalaTargetsMask-LHAmygdala-Measures.csv
done

