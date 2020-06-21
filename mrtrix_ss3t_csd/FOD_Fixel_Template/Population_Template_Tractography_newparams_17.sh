#!/bin/bash

#Run tractography on population template
#https://mrtrix.readthedocs.io/en/latest/fixel_based_analysis/st_fibre_density_cross-section.html, Step 20

/share/apps/singularity/2.5.1/bin/singularity exec -B /data:/mnt /data/jag/cnds/applications/mrtrix_ss3t_beta/ss3t_beta.simg tckgen -angle 22.5 -maxlen 250 -minlen 10 -power 1.0 /mnt/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/ZAPR01_FOD_Template.mif -seed_image /mnt/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/ZAPR01_FOD_Template_Mask.mif -mask /mnt/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FOD_PopulationTemplate/ZAPR01_FOD_Template_Mask.mif -select 2000000 -cutoff 0.10 /mnt/jux/cnds/ZAPR01/mrtrix_ss3t_csd/Tractography_PopulationTemplate/ZAPR01-FOD-Template-tractography-newparams.tck

