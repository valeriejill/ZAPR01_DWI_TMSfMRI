#!/bin/bash

for tracts in LHFrontal-LHAmygdala LH-FrontalPole-LHAmygdala LH-IFGOFC-LHAmygdala LH-PrecentralGyrus-LHAmygdala LH-SFG-LHAmygdala; do for metric in FD FC FDC; do /cbica/projects/pnc_fixel_cs/bin/fixelconnectivity ./Fixels/$tracts-Fixels/$metric ./Tractography/ZAPR01-FOD-Template-$tracts-tracts.tck ./Fixels/$tracts-Fixels/$metric/fixel_connectivitymatrix; done; done

for tracts in LHFrontal-LHAmygdala LH-FrontalPole-LHAmygdala LH-IFGOFC-LHAmygdala LH-PrecentralGyrus-LHAmygdala LH-SFG-LHAmygdala; do for metric in FD FC FDC; do /cbica/projects/pnc_fixel_cs/bin/fixelfilter ./Fixels/$tracts-Fixels/$metric smooth -matrix ./Fixels/$tracts-Fixels/$metric/fixel_connectivitymatrix -fwhm 10 ./Fixels/$tracts-Fixels/${metric}_smoothed; done; done
