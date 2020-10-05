#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels

python $ZAP/ZAPR01_DWI_TMSfMRI/tractography_sitesofstim_amygdala/tck2trk.py $ZAP/ZAPR01_FOD_Template.nii.gz $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-AmygdalaTargetsMask-LHAmygdala-tracts.tck 
