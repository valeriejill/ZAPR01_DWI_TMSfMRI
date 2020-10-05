#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels


for num in 1 2 3 5 8 10 15; do
ln -s $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels/AmygTargets-LHAmyg-mask-$num.mif $ZAP/FixelMask_PopulationTemplate/FD
ln -s $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels/AmygTargets-LHAmyg-mask-$num.mif $ZAP/FixelMask_PopulationTemplate/FC 
ln -s $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels/AmygTargets-LHAmyg-mask-$num.mif $ZAP/FixelMask_PopulationTemplate/FDC

done

for num in 1 2 3 5 8 10 15; do
for metric in FD FC FDC; do
/storage/3Tissue/bin/fixelcrop $ZAP/FixelMask_PopulationTemplate/$metric $ZAP/FixelMask_PopulationTemplate/$metric/AmygTargets-LHAmyg-mask-$num.mif $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels/$metric-$num -force
done
done
 
