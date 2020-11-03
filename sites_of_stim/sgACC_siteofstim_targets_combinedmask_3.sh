#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels 

fslmaths /usr/local/fsl/data/standard/MNI152lin_T1_2mm_brain.nii.gz -mul 0 $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/sgACC-siteofstim-TargetsMask-MNI152lin-2mm.nii.gz

cd $ZAP/subject_data

for i in sub-ZAPR01C* ; do 

fslmaths $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/sgACC-siteofstim-TargetsMask-MNI152lin-2mm.nii.gz -add $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/${i}_siteofstim_sgACC_ROI_3mm.nii.gz $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/sgACC-siteofstim-TargetsMask-MNI152lin-2mm.nii.gz

done

fslmaths $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/sgACC-siteofstim-TargetsMask-MNI152lin-2mm.nii.gz -bin $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/sgACC-siteofstim-TargetsMask-MNI152lin-2mm.nii.gz

