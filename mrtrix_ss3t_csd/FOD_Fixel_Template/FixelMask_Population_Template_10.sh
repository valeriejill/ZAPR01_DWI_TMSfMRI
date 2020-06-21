#!/bin/bash

#Create a Population Fixel Analysis Mask
#https://mrtrix.readthedocs.io/en/latest/fixel_based_analysis/st_fibre_density_cross-section.html, Step 13


/share/apps/singularity/2.5.1/bin/singularity exec -B /data:/mnt /data/jag/cnds/applications/mrtrix_ss3t_beta/ss3t_beta.simg fod2fixel -mask /mnt/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/ZAPR01_FOD_Template_Mask.mif -fmls_peak_value 0.10 /mnt/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/ZAPR01_FOD_Template.mif /mnt/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FixelMask_PopulationTemplate 

