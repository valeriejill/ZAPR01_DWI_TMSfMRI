#!/bin/bash

for dir in /data/jux/oathes_group/studies/TNI_ZAPR01/MRI/BIDS/BIDS_DTI/*
do
case=${dir##*/}

if [ -e /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/$case/ses-Baseline/dwi/$case-acq-DTIb1000mb2dir64-preproc_dwi-biascorrect.mif ] ; then

mrconvert /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/$case/ses-Baseline/dwi/$case-acq-DTIb1000mb2dir64-preproc_dwi-biascorrect.mif /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/$case/ses-Baseline/dwi/$case-acq-DTIb1000mb2dir64-preproc_dwi-biascorrect.nii.gz

slicer /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/$case/ses-Baseline/dwi/$case-acq-DTIb1000mb2dir64-preproc_dwi-biascorrect.nii.gz -a /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/$case/ses-Baseline/dwi/$case-dwi-biascorrect.png

rm /data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/$case/ses-Baseline/dwi/$case-acq-DTIb1000mb2dir64-preproc_dwi-biascorrect.nii.gz

fi
done
