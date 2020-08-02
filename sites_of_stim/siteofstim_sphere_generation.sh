#!/bin/bash

cd /storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/sites_of_stim

#extract x,y,z coordinates for each subject+ROI pair
while read line
do

cat ZAPR01_SiteofStim_MNIcoordinates_BLA.csv | grep $line >> ${line}_siteofstim_BLA_tmp.csv
cut -d "," -f 3-  ${line}_siteofstim_BLA_tmp.csv >> ${line}_siteofstim_BLA.csv
rm ${line}_siteofstim_BLA_tmp.csv
cat ZAPR01_SiteofStim_MNIcoordinates_sgACC.csv | grep $line >> ${line}_siteofstim_sgACC_tmp.csv
cut -d "," -f 3-  ${line}_siteofstim_sgACC_tmp.csv >> ${line}_siteofstim_sgACC.csv
rm ${line}_siteofstim_sgACC_tmp.csv
done < ZAPR01_N65_caselist.txt

#generate ROI spheres
while read line
do

#BLA
xcoord=$(awk -F, 'BEGIN {OFS=","} {print $1}' ${line}_siteofstim_BLA.csv)
ycoord=$(awk -F, 'BEGIN {OFS=","} {print $2}' ${line}_siteofstim_BLA.csv)
zcoord=$(awk -F, 'BEGIN {OFS=","} {print $3}' ${line}_siteofstim_BLA.csv)

fslmaths /usr/local/fsl/data/standard/MNI152lin_T1_2mm_brain.nii.gz -mul 0 -add 1 -roi $xcoord 1 $ycoord 1 $zcoord 1 0 1 ${line}_siteofstim_BLA_point.nii.gz -odt float
fslmaths ${line}_siteofstim_BLA_point.nii.gz -dilM -kernel sphere 5 -fmean -bin ${line}_siteofstim_BLA_ROI.nii.gz

#sgACC
xcoord=$(awk -F, 'BEGIN {OFS=","} {print $1}' ${line}_siteofstim_sgACC.csv)
ycoord=$(awk -F, 'BEGIN {OFS=","} {print $2}' ${line}_siteofstim_sgACC.csv)
zcoord=$(awk -F, 'BEGIN {OFS=","} {print $3}' ${line}_siteofstim_sgACC.csv)

fslmaths /usr/local/fsl/data/standard/MNI152lin_T1_2mm_brain.nii.gz -mul 0 -add 1 -roi $xcoord 1 $ycoord 1 $zcoord 1 0 1 ${line}_siteofstim_sgACC_point.nii.gz -odt float
fslmaths ${line}_siteofstim_sgACC_point.nii.gz -dilM -kernel sphere 5 -fmean -bin ${line}_siteofstim_sgACC_ROI.nii.gz

done < ZAPR01_N65_caselist.txt

