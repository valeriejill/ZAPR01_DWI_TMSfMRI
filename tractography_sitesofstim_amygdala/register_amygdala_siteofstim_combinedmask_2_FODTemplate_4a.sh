#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels/
antsApplyTransforms -d 3 -i $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/Amygdala-siteofstim-TargetsMask-MNI152lin-2mm.nii.gz -r /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template-masked.nii.gz -o $ZAP/PFC_Amygdala_Tractography_Analyses/sites_of_stim/Amygdala-siteofstim-TargetsMask-inFODTemplate.nii.gz -n NearestNeighbor -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate1Warp.nii.gz -t /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate0GenericAffine.mat
 

