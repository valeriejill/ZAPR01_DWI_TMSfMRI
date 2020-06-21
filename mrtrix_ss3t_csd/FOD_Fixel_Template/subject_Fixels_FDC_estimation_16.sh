#!/bin/bash
#

#Compute FDC
#https://mrtrix.readthedocs.io/en/latest/fixel_based_analysis/st_fibre_density_cross-section.html , Step 19

mkdir /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FixelMask_PopulationTemplate/FDC
cp /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FixelMask_PopulationTemplate/FC/index.mif /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FixelMask_PopulationTemplate/FDC
cp /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FixelMask_PopulationTemplate/FC/directions.mif /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FixelMask_PopulationTemplate/FDC

for SUBJ in sub-ZAPR01C193 sub-ZAPR01C309 sub-ZAPR01C412 sub-ZAPR01C650 sub-ZAPR01C765 sub-ZAPR01C991 sub-ZAPR01P552 sub-ZAPR01C207 sub-ZAPR01C311 sub-ZAPR01C426 sub-ZAPR01C656 sub-ZAPR01P120 sub-ZAPR01P581 sub-ZAPR01P998 sub-ZAPR01C105 sub-ZAPR01C209 sub-ZAPR01C318 sub-ZAPR01C427 sub-ZAPR01C811 sub-ZAPR01P188 sub-ZAPR01P594 sub-ZAPR01C127 sub-ZAPR01C210 sub-ZAPR01C328 sub-ZAPR01C468 sub-ZAPR01C820 sub-ZAPR01P287 sub-ZAPR01P672 sub-ZAPR01C130 sub-ZAPR01C219 sub-ZAPR01C347 sub-ZAPR01C470 sub-ZAPR01C714 sub-ZAPR01P718 sub-ZAPR01C134 sub-ZAPR01C220 sub-ZAPR01C351 sub-ZAPR01C472 sub-ZAPR01C891 sub-ZAPR01P363 sub-ZAPR01P726 sub-ZAPR01C140 sub-ZAPR01C262 sub-ZAPR01C354 sub-ZAPR01C527 sub-ZAPR01C750 sub-ZAPR01P372 sub-ZAPR01P752 sub-ZAPR01C148 sub-ZAPR01C264 sub-ZAPR01C540 sub-ZAPR01C759 sub-ZAPR01C915 sub-ZAPR01P396 sub-ZAPR01P802 sub-ZAPR01C172 sub-ZAPR01C269 sub-ZAPR01C584 sub-ZAPR01C763 sub-ZAPR01C952 sub-ZAPR01P478 sub-ZAPR01P831 sub-ZAPR01C178 sub-ZAPR01C305 sub-ZAPR01P526

do

/share/apps/singularity/2.5.1/bin/singularity exec -B /data:/home/vsydnor/data /data/jag/cnds/applications/mrtrix_ss3t_beta/ss3t_beta.simg mrcalc /home/vsydnor/data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FixelMask_PopulationTemplate/FD/${SUBJ}-FD.mif /home/vsydnor/data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FixelMask_PopulationTemplate/FC/${SUBJ}-FC.mif -mult /home/vsydnor/data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/FixelMask_PopulationTemplate/FDC/${SUBJ}-FDC.mif

done



