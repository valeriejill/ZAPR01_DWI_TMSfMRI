#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels

/storage/3Tissue/bin/tck2fixel $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-AmygdalaTargetMask-LHAmygdala-tracts.tck $ZAP/FixelMask_PopulationTemplate $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels AmygTargets-LHAmyg-TDI.mif -force

for num in 1 2 3 5 8 10 15 
do
/storage/3Tissue/bin/mrthreshold $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels/AmygTargets-LHAmyg-TDI.mif -abs $num $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels/AmygTargets-LHAmyg-mask-$num.mif -force
done 
