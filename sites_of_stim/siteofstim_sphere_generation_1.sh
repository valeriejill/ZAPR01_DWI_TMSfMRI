#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels 
stimsites=/storage/vsydnor/ZAPR01_Fixels/PFC_Amygdala_Tractography_Analyses/sites_of_stim

cd $ZAP/subject_data

for i in sub-ZAPR01C* ; do

#extract x,y,z coordinates for each subject+ROI pair

cat $stimsites/ZAPR01_SiteofStim_MNIcoordinates_BLA.csv | grep $i >> $stimsites/${i}_siteofstim_BLA_tmp.csv
cut -d "," -f 3-  $stimsites/${i}_siteofstim_BLA_tmp.csv >> $stimsites/${i}_siteofstim_BLA.csv
rm $stimsites/${i}_siteofstim_BLA_tmp.csv

cat $stimsites/ZAPR01_SiteofStim_MNIcoordinates_sgACC.csv | grep $i >> $stimsites/${i}_siteofstim_sgACC_tmp.csv
cut -d "," -f 3-  $stimsites/${i}_siteofstim_sgACC_tmp.csv >> $stimsites/${i}_siteofstim_sgACC.csv
rm $stimsites/${i}_siteofstim_sgACC_tmp.csv

#generate ROI spheres

#BLA
xcoord=$(awk -F, 'BEGIN {OFS=","} {print $1}' $stimsites/${i}_siteofstim_BLA.csv)
ycoord=$(awk -F, 'BEGIN {OFS=","} {print $2}' $stimsites/${i}_siteofstim_BLA.csv)
zcoord=$(awk -F, 'BEGIN {OFS=","} {print $3}' $stimsites/${i}_siteofstim_BLA.csv)

fslmaths /usr/local/fsl/data/standard/MNI152lin_T1_2mm_brain.nii.gz -mul 0 -add 1 -roi $xcoord 1 $ycoord 1 $zcoord 1 0 1 $stimsites/${i}_siteofstim_BLA_point.nii.gz -odt float
fslmaths $stimsites/${i}_siteofstim_BLA_point.nii.gz -dilM -kernel sphere 3 -fmean -bin $stimsites/${i}_siteofstim_BLA_ROI_3mm.nii.gz

#sgACC
xcoord=$(awk -F, 'BEGIN {OFS=","} {print $1}' $stimsites/${i}_siteofstim_sgACC.csv)
ycoord=$(awk -F, 'BEGIN {OFS=","} {print $2}' $stimsites/${i}_siteofstim_sgACC.csv)
zcoord=$(awk -F, 'BEGIN {OFS=","} {print $3}' $stimsites/${i}_siteofstim_sgACC.csv)

fslmaths /usr/local/fsl/data/standard/MNI152lin_T1_2mm_brain.nii.gz -mul 0 -add 1 -roi $xcoord 1 $ycoord 1 $zcoord 1 0 1 $stimsites/${i}_siteofstim_sgACC_point.nii.gz -odt float
fslmaths $stimsites/${i}_siteofstim_sgACC_point.nii.gz -dilM -kernel sphere 3 -fmean -bin $stimsites/${i}_siteofstim_sgACC_ROI_3mm.nii.gz

done
