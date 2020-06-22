#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels 
cd $ZAP/subject_data

for i in sub* ; do
/storage/3Tissue/bin/dwi2tensor $i/ses-Baseline/dwi/$i-acq-DTIb1000mb2dir64-preproc_dwi.mif $i/ses-Baseline/dwi/$i-acq-DTIb1000mb2dir64-preproc_tensormap.mif
/storage/3Tissue/bin/tensor2metric $i/ses-Baseline/dwi/$i-acq-DTIb1000mb2dir64-preproc_tensormap.mif -fa $i/ses-Baseline/dwi/$i-acq-DTIb1000mb2dir64-preproc_FAmap.mif -mask $i/ses-Baseline/dwi/$i-acq-DTIb1000mb2dir64-preproc_dwi-brainmask-dilated.mif
done

for i in sub* ; do
/storage/3Tissue/bin/mrtransform $i/ses-Baseline/dwi/$i-acq-DTIb1000mb2dir64-preproc_FAmap.mif -warp $i/ses-Baseline/dwi/$i-SubjectFOD2Template_warp.mif -interp cubic $i/ses-Baseline/dwi/$i-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.mif
/storage/3Tissue/bin/mrconvert $i/ses-Baseline/dwi/$i-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.mif $i/ses-Baseline/dwi/$i-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz
done

fslmerge -t $ZAP/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template_Merged.nii.gz sub-ZAPR01C759/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C105/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C134/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C148/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C193/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C269/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C305/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C318/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C354/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C412/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C468/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C470/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C584/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C750/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01C952/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P120/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P188/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P287/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P363/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P372/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P526/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P552/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P581/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P594/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P718/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P726/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P752/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P802/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P831/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz sub-ZAPR01P998/ses-Baseline/dwi/*-acq-DTIb1000mb2dir64-preproc_FAmap-inFODTemplate.nii.gz  


fslmaths $ZAP/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template_Merged.nii.gz -Tmean $ZAP/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template.nii.gz

/storage/3Tissue/bin/mrconvert $ZAP/ZAPR01_FOD_Template.mif -coord 3 0 -axes 0,1,2 $ZAP/ZAPR01_FOD_Template_l0.mif
/storage/3Tissue/bin/mrconvert $ZAP/ZAPR01_FOD_Template_l0.mif $ZAP/ZAPR01_FOD_Template_l0.nii.gz
fslmaths $ZAP/ZAPR01_FOD_Template_l0.nii.gz -thr 0.01 $ZAP/ZAPR01_FOD_Template_l0.nii.gz
fslmaths $ZAP/ZAPR01_FOD_Template_l0.nii.gz -bin $ZAP/ZAPR01_FOD_Template_l0-mask.nii.gz
fslmaths $ZAP/ZAPR01_FOD_Template_l0-mask.nii.gz -ero $ZAP/ZAPR01_FOD_Template_l0-mask.nii.gz
fslmaths $ZAP/ZAPR01_FOD_Template_l0-mask.nii.gz -ero $ZAP/ZAPR01_FOD_Template_l0-mask.nii.gz
fslmaths $ZAP/ZAPR01_FOD_Template_l0-mask.nii.gz -ero $ZAP/ZAPR01_FOD_Template_l0-mask.nii.gz

fslmaths $ZAP/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template.nii.gz -mul $ZAP/ZAPR01_FOD_Template_l0-mask.nii.gz $ZAP/PFC_Amygdala_Tractography_Analyses/Templates/ZAPR01_FA_Template-masked.nii.gz
