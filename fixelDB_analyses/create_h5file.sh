#!/bin/bash

ZAP=/storage/vsydnor/ZAPR01_Fixels

for tracts in LHFrontal-LHAmygdala LH-FrontalPole-LHAmygdala LH-IFGOFC-LHAmygdala LH-PrecentralGyrus-LHAmygdala LH-SFG-LHAmygdala; do
fixeldb_create --relative-root /storage/vsydnor/ZAPR01_Fixels --index-file ./PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/FD_smoothed/index.mif --directions-file ./PFC_Amygdala_Tractography_Analyses/Fixels/$tracts-Fixels/FD_smoothed/directions.mif --cohort-file ./PFC_Amygdala_Tractography_Analyses/ZAPR01_phenotypes_imaging_${tracts}.csv --output-hdf5 ./PFC_Amygdala_Tractography_Analyses/ZAPR01_phenotypes_imaging_${tracts}.h5
done
