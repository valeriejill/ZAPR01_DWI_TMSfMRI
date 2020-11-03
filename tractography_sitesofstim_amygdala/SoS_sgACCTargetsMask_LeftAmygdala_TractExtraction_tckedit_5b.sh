#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels

/storage/mrtrix3/bin/tckedit $ZAP/Tractography/ZAPR01-FOD-Template-tractography-newparams.tck -include $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala-inFODTemplate.nii.gz -include $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/sgACC-siteofstim-TargetsMask-inFODTemplate.nii.gz -ends_only $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-sgACCTargetsMask-LHAmygdala-tracts.tck

