#!/bin/bash

#Upsample HCP FA Template to ZAPR01 FA Template Resolution
ResampleImage 3 /usr/local/fsl/data/standard/FSL_HCP1065_FA_1mm.nii.gz /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm.nii.gz 1.3X1.3X1.3 0 4

#Register HCP FA Template to ZAPR01 FA Template
antsRegistrationSyN.sh -d 3 -m /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm.nii.gz -f /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template-masked.nii.gz -o /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/Templates/FSL_HCP1065_FA_1.3mm-inFODTemplate

