#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels

for cluster in 1 2; do
for num in 1 2 3 5 8 10 15; do
ln -s $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/AmygTargets-LHAmyg-mask-$num.mif $ZAP/FixelMask_PopulationTemplate/FD/AmygTargets-LHAmyg-mask-$num-cluster$cluster.mif
ln -s $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/AmygTargets-LHAmyg-mask-$num.mif $ZAP/FixelMask_PopulationTemplate/FC/AmygTargets-LHAmyg-mask-$num-cluster$cluster.mif
ln -s $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/AmygTargets-LHAmyg-mask-$num.mif $ZAP/FixelMask_PopulationTemplate/FDC/AmygTargets-LHAmyg-mask-$num-cluster$cluster.mif
done
done

for num in 1 2 3 5 8 10 15; do
for metric in FD FC FDC; do
for cluster in 1 2; do
/storage/3Tissue/bin/fixelcrop $ZAP/FixelMask_PopulationTemplate/$metric $ZAP/FixelMask_PopulationTemplate/$metric/AmygTargets-LHAmyg-mask-$num-cluster$cluster.mif $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/$metric-$num -force
done
done
done
 
