#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels


#combine SFG (74 streamlines) and MFG (4 streamlines) ROIs
fslmaths $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-SFG-inFODTemplate.nii.gz -add $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-MFG-inFODTemplate.nii.gz $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-SFGMFG-inFODTemplate.nii.gz
fslmaths $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-SFGMFG-inFODTemplate.nii.gz -bin $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-SFGMFG-inFODTemplate.nii.gz


for ROI in FrontalPole SFG MFG IFG PrecentralGyrus FrontalMedial OFC; do

fslmaths $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-$ROI-inFODTemplate.nii.gz -mul  $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/LH_FrontalLobe-maxprob-thr25-1mm-inFODTemplate.nii.gz $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-$ROI-inFODTemplate.nii.gz

/storage/3Tissue/bin/tckedit  $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-LHFrontal-LHAmygdala-tracts.tck -include $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-$ROI-inFODTemplate.nii.gz  -include $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala-inFODTemplate.nii.gz -ends_only -minlength 30 $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-LH-$ROI-LHAmygdala-tracts.tck


done

#remove MFG, only 3 streamlines
rm $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-LH-MFG-LHAmygdala-tracts.tck

#remove FrontalMedial, 0 streamlines
rm $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-LH-FrontalMedial-LHAmygdala-tracts.tck

#combine IFG and OFC
rm $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-LH-IFG-LHAmygdala-tracts.tck
rm $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-LH-OFC-LHAmygdala-tracts.tck


fslmaths $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-IFG-inFODTemplate.nii.gz -add $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-OFC-inFODTemplate.nii.gz $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-IFGOFC-inFODTemplate.nii.gz

/storage/3Tissue/bin/tckedit  $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-LHFrontal-LHAmygdala-tracts.tck -include $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-IFGOFC-inFODTemplate.nii.gz  -include $ZAP/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala-inFODTemplate.nii.gz -ends_only -minlength 30 $ZAP/PFC_Amygdala_Tractography_Analyses/Tractography/ZAPR01-FOD-Template-LH-IFGOFC-LHAmygdala-tracts.tck

