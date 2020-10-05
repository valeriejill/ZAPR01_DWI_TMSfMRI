#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels

fslmaths  $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/BLA_sitesofstim_3mm_inFODtemplate.nii.gz -bin  $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/BLA_sitesofstim_3mm_inFODtemplate-bin.nii.gz
#fslmaths $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/BLA_sitesofstim_3mm_inFODtemplate-bin.nii.gz -dilM -kernel sphere 5 $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/BLA_sitesofstim_3mm_inFODtemplate-dil.nii.gz
#/storage/3Tissue/bin/tckedit /storage/vsydnor/ZAPR01_Fixels/Tractography/ZAPR01-FOD-Template-tractography-newparams.tck  -include $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala-inFODTemplate.nii.gz -include $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/BLA_sitesofstim_3mm_inFODtemplate-dil.nii.gz -ends_only -minlength 30 $ZAP/PFC_Amygdala_Tractography_Analyses//Tractography/ZAPR01-FOD-Template-AmygdalaTargetMask-LHAmygdala-dil-tracts.tck -force
/storage/3Tissue/bin/tckedit /storage/vsydnor/ZAPR01_Fixels/Tractography/ZAPR01-FOD-Template-tractography-newparams.tck  -include $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala-inFODTemplate.nii.gz -include $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/BLA_sitesofstim_3mm_inFODtemplate-bin.nii.gz -ends_only -minlength 30 $ZAP/PFC_Amygdala_Tractography_Analyses//Tractography/ZAPR01-FOD-Template-AmygdalaTargetMask-LHAmygdala-dil-tracts.tck -force
