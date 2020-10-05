#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels

/storage/3Tissue/bin/tck2fixel $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-AmygdalaTargetMask-LHAmygdala-cluster1.tck $ZAP/FixelMask_PopulationTemplate $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster1-Fixels AmygTargets-LHAmyg-TDI.mif -force
/storage/3Tissue/bin/tck2fixel $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-AmygdalaTargetMask-LHAmygdala-cluster2.tck $ZAP/FixelMask_PopulationTemplate $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster2-Fixels AmygTargets-LHAmyg-TDI.mif -force

for cluster in 1 2; do
for num in 1 2 3 5 8 10 15 ; do
/storage/3Tissue/bin/mrthreshold $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/AmygTargets-LHAmyg-TDI.mif -abs $num $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/AmygTargets-LHAmyg-mask-$num.mif -force
done 
done
