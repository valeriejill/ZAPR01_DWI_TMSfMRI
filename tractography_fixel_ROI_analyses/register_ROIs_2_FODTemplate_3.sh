#!/bin/bash

mkdir /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks

#Extract HO LH Amygdala (max prob 50 mm) and register to ZAPR01 FA Template
fslmaths /usr/local/fsl-5.0.11/data/atlases/HarvardOxford/HarvardOxford-sub-maxprob-thr25-1mm.nii.gz -thr 10 -uthr 10 /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala.nii.gz

antsApplyTransforms -d 3 -i /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala.nii.gz -r /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template-masked.nii.gz -o /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala-inFODTemplate.nii.gz -n NearestNeighbor -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate1Warp.nii.gz -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate0GenericAffine.mat 

#Generate MNI Template GM mask (FSL FAST) and register to ZAPR01 FA Template
#ResampleImage 3 /usr/local/fsl-5.0.11/data/standard/MNI152_T1_1mm_brain.nii.gz /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/MNI152_T1_1.3mm_brain.nii.gz 1.3X1.3X1.3 0 4

#ResampleImage 3 /usr/local/fsl-5.0.11/data/standard/MNI152_T1_1mm_brain_mask.nii.gz /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/MNI152_T1_1.3mm_brain_mask.nii.gz 1.3X1.3X1.3 0 1

#fslmaths /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/MNI152_T1_1.3mm_brain.nii.gz -mul /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/MNI152_T1_1.3mm_brain_mask.nii.gz /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/MNI152_T1_1.3mm_brain-masked.nii.gz

#fast -g -o  /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/MNI152_T1_1.3mm-fast- /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/MNI152_T1_1.3mm_brain-masked.nii.gz

antsApplyTransforms -d 3 -i /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/MNI152_T1_1.3mm-fast-_seg_1.nii.gz -r /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template-masked.nii.gz -o /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/MNI152_T1_1.3mm-fast-seg_1-inFODTemplate.nii.gz -n NearestNeighbor -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate1Warp.nii.gz -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate0GenericAffine.mat 

#Generate LH Frontal ROI and register to ZAPR01 FA Template
fslmaths /usr/local/fsl-5.0.11/data/atlases/MNI/MNI-maxprob-thr25-1mm.nii.gz -thr 3 -uthr 3 /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/MNI-maxprob-thr25-1mm-FrontalLobes.nii.gz
fslmaths /usr/local/fsl-5.0.11/data/atlases/HarvardOxford/HarvardOxford-sub-maxprob-thr25-1mm.nii.gz -thr 2 -uthr 2 /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LH.nii.gz
fslmaths  /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/MNI-maxprob-thr25-1mm-FrontalLobes.nii.gz -mul /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LH.nii.gz /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/LH_FrontalLobe-maxprob-thr25-1mm.nii.gz
fslmaths /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/LH_FrontalLobe-maxprob-thr25-1mm.nii.gz -bin /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/LH_FrontalLobe-maxprob-thr25-1mm.nii.gz
rm /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/MNI-maxprob-thr25-1mm-FrontalLobes.nii.gz /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LH.nii.gz

antsApplyTransforms -d 3 -i /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/LH_FrontalLobe-maxprob-thr25-1mm.nii.gz -r /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template-masked.nii.gz -o /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/LH_FrontalLobe-maxprob-thr25-1mm-inFODTemplate.nii.gz -n NearestNeighbor -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate1Warp.nii.gz -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate0GenericAffine.mat 

#Extract HO Left Frontal ROI and register to ZAPR01 FA Template
fslmaths /usr/local/fsl-5.0.11/data/atlases/HarvardOxford/HarvardOxford-cort-maxprob-thr25-1mm.nii.gz -thr 1 -uthr 1 /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-FrontalPole.nii.gz
fslmaths /usr/local/fsl-5.0.11/data/atlases/HarvardOxford/HarvardOxford-cort-maxprob-thr25-1mm.nii.gz -thr 3 -uthr 3 /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-SFG.nii.gz 
fslmaths /usr/local/fsl-5.0.11/data/atlases/HarvardOxford/HarvardOxford-cort-maxprob-thr25-1mm.nii.gz -thr 4 -uthr 4 /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-MFG.nii.gz 
fslmaths /usr/local/fsl-5.0.11/data/atlases/HarvardOxford/HarvardOxford-cort-maxprob-thr25-1mm.nii.gz -thr 5 -uthr 6 /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-IFG.nii.gz 
fslmaths /usr/local/fsl-5.0.11/data/atlases/HarvardOxford/HarvardOxford-cort-maxprob-thr25-1mm.nii.gz -thr 7 -uthr 7 /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-PrecentralGyrus.nii.gz
fslmaths /usr/local/fsl-5.0.11/data/atlases/HarvardOxford/HarvardOxford-cort-maxprob-thr25-1mm.nii.gz -thr 25 -uthr 25 /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-FrontalMedial.nii.gz
fslmaths /usr/local/fsl-5.0.11/data/atlases/HarvardOxford/HarvardOxford-cort-maxprob-thr25-1mm.nii.gz -thr 33 -uthr 33 /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-OFC.nii.gz

fslmaths /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-FrontalPole.nii.gz -add /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-SFG.nii.gz /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-FrontalROIs.nii.gz
fslmaths /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-FrontalROIs.nii.gz -add /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-MFG.nii.gz -add /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-IFG.nii.gz -add /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-PrecentralGyrus.nii.gz -add /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-FrontalMedial.nii.gz -add /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-OFC.nii.gz /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-FrontalROIs.nii.gz 
fslmaths /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-FrontalROIs.nii.gz -mul /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/LH_FrontalLobe-maxprob-thr25-1mm.nii.gz /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-FrontalROIs.nii.gz

antsApplyTransforms -d 3 -i /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-FrontalROIs.nii.gz -r /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template-masked.nii.gz -o /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-cort-maxprob-thr25-1mm-FrontalROIs-inFODTemplate.nii.gz -n MultiLabel -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate1Warp.nii.gz -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate0GenericAffine.mat

