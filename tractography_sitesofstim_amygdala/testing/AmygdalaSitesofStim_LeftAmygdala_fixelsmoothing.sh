#!/bin/bash

for metric in FD FC FDC; do 
for num in 1 2 3 5 8 10; do

/cbica/projects/pnc_fixel_cs/bin/fixelconnectivity ~/fixel_smoothing/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels/$metric-$num ~/fixel_smoothing/Tractography/ZAPR01-FOD-Template-AmygdalaTargetMask-LHAmygdala-dil-tracts.tck ~/fixel_smoothing/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels/$metric-$num/fixel_connectivitymatrix

/cbica/projects/pnc_fixel_cs/bin/fixelfilter ~/fixel_smoothing/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels/$metric-$num smooth -matrix  ~/fixel_smoothing/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels/$metric-$num/fixel_connectivitymatrix -fwhm 10 ~/fixel_smoothing/Fixels/AmygdalaTargetMask-LHAmygdala-Fixels/$metric-$num-smoothed

done
done
