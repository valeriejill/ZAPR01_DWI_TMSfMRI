#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels

#for tracts in LHFrontal-LHAmygdala LH-FrontalPole-LHAmygdala LH-IFGOFC-LHAmygdala LH-PrecentralGyrus-LHAmygdala LH-SFG-LHAmygdala; do
#ln -s $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/$tracts-TDI-masked.mif $ZAP/FixelMask_PopulationTemplate/FD 
#ln -s $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/$tracts-TDI-masked.mif $ZAP/FixelMask_PopulationTemplate/FC
#ln -s $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/$tracts-TDI-masked.mif $ZAP/FixelMask_PopulationTemplate/FDC
#done

for tracts in LHFrontal-LHAmygdala LH-FrontalPole-LHAmygdala LH-IFGOFC-LHAmygdala LH-PrecentralGyrus-LHAmygdala LH-SFG-LHAmygdala; do
for metric in FD FC FDC; do

/storage/3Tissue/bin/fixelcrop $ZAP/FixelMask_PopulationTemplate/$metric $ZAP/FixelMask_PopulationTemplate/$metric/$tracts-TDI-masked.mif $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/$metric

done
done
