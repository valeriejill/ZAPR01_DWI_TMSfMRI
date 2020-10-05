#!/bin/bash

mkdir /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks

#Extract HO LH Amygdala (max prob 25 mm) and register to ZAPR01 FA Template
fslmaths /usr/local/fsl-5.0.11/data/atlases/HarvardOxford/HarvardOxford-sub-maxprob-thr25-1mm.nii.gz -thr 10 -uthr 10 /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala.nii.gz

antsApplyTransforms -d 3 -i /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala.nii.gz -r /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template-masked.nii.gz -o /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/ROI_masks/HarvardOxford-sub-maxprob-thr25-1mm-LHamygdala-inFODTemplate.nii.gz -n NearestNeighbor -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate1Warp.nii.gz -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate0GenericAffine.mat 

