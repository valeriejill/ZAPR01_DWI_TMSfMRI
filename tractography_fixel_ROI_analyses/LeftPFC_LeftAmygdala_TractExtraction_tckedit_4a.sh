#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels

mkdir $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography

/storage/3Tissue/bin/tckedit $ZAP/Tractography/ZAPR01-FOD-Template-tractography-newparams.tck -include $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/LH_FrontalLobe-maxprob-thr25-1mm-inFODTemplate.nii.gz -include $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala-inFODTemplate.nii.gz -ends_only -minlength 30  $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-LHFrontal-LHAmygdala-tracts.tck 



