#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels

/storage/3Tissue/bin/tck2fixel $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-AmygdalaTargetsMask-LHAmygdala-tracts.tck $ZAP/FixelMask_PopulationTemplate $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels AmygTargets-LHAmyg-TDI.mif -force

for num in 2 4 5 6 8 10 12 
do
/storage/3Tissue/bin/mrthreshold $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/AmygTargets-LHAmyg-TDI.mif -abs $num $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/AmygdalaTargetsMask-LHAmygdala-Fixels/AmygTargets-LHAmyg-mask-$num.mif -force
done 
