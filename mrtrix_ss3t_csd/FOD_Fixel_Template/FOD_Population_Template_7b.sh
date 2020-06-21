#!/bin/bash

#Create a study-specific FOD Template using data from 30 individuals (15 patients, 15 controls)
#https://mrtrix.readthedocs.io/en/latest/fixel_based_analysis/st_fibre_density_cross-section.html, Step 10

/share/apps/singularity/2.5.1/bin/singularity exec -B /data:/mnt /data/jag/cnds/applications/mrtrix_ss3t_beta/ss3t_beta.simg population_template /mnt/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/FOD_inputs -mask_dir /mnt/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/mask_inputs /mnt/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/ZAPR01_FOD_Template.mif -voxel_size 1.3 -scratch /mnt/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/scratch

