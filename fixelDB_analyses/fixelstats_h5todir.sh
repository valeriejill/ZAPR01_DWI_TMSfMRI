#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels


for tracts in LHFrontal-LHAmygdala LH-FrontalPole-LHAmygdala LH-IFGOFC-LHAmygdala LH-PrecentralGyrus-LHAmygdala LH-SFG-LHAmygdala; do
mkdir $ZAP/PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/FD_smoothed_statistics
fixelstats_write  --relative-root /storage/vsydnor/ZAPR01_Fixels --index-file ./PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/FD_smoothed/index.mif --directions-file ./PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/FD_smoothed/directions.mif --cohort-file ./PFC_Amygdala_Tractography_Analyses/ZAPR01_phenotypes_imaging_${tracts}.csv --input-hdf5 ./PFC_Amygdala_Tractography_Analyses/ZAPR01_phenotypes_imaging_${tracts}.h5 --output-dir PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/FD_smoothed_statistics

done
