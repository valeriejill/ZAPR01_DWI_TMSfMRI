#!/bin/bash

#Create a study-specific FOD Template using data from 30 individuals (15 patients, 15 controls)
#https://mrtrix.readthedocs.io/en/latest/fixel_based_analysis/st_fibre_density_cross-section.html, Step 10

mkdir -p /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/FOD_inputs
mkdir /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/mask_inputs

for SUBJ in sub-ZAPR01C759 sub-ZAPR01C105 sub-ZAPR01C134 sub-ZAPR01C148 sub-ZAPR01C193 sub-ZAPR01C269 sub-ZAPR01C305 sub-ZAPR01C318 sub-ZAPR01C354 sub-ZAPR01C412 sub-ZAPR01C468 sub-ZAPR01C470 sub-ZAPR01C584 sub-ZAPR01C750 sub-ZAPR01C952 sub-ZAPR01P120 sub-ZAPR01P188 sub-ZAPR01P287 sub-ZAPR01P363 sub-ZAPR01P372 sub-ZAPR01P526 sub-ZAPR01P552 sub-ZAPR01P581 sub-ZAPR01P594 sub-ZAPR01P718 sub-ZAPR01P726 sub-ZAPR01P752 sub-ZAPR01P802 sub-ZAPR01P831 sub-ZAPR01P998 

do

cd /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/FOD_inputs
ln -s ../../$SUBJ/ses-Baseline/dwi/$SUBJ-WM-FOD-norm.mif /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/FOD_inputs

cd /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/mask_inputs
ln -s ../../$SUBJ/ses-Baseline/dwi/$SUBJ-acq-DTIb1000mb2dir64-preproc_dwi-brainmask.mif /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/mask_inputs

done

