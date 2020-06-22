#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels
mkdir $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels

for tracts in LHFrontal-LHAmygdala LH-FrontalPole-LHAmygdala LH-IFGOFC-LHAmygdala LH-PrecentralGyrus-LHAmygdala LH-SFG-LHAmygdala; do
/storage/3Tissue/bin/tck2fixel $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-$tracts-tracts.tck $ZAP/FixelMask_PopulationTemplate $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels $tracts-TDI.mif
done 

for tracts in LHFrontal-LHAmygdala LH-FrontalPole-LHAmygdala LH-IFGOFC-LHAmygdala LH-PrecentralGyrus-LHAmygdala LH-SFG-LHAmygdala; do
/storage/3Tissue/bin/mrthreshold $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/$tracts-TDI.mif $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/$tracts-TDI-masked.mif
done
