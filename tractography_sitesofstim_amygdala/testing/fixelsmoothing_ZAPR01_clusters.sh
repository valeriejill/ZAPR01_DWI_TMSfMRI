#!/bin/bash

for cluster in 1 2; do
for metric in FD FC FDC; do 
for num in 1 2 3 5 8 10 15; do

/cbica/projects/pnc_fixel_cs/bin/fixelconnectivity ~/fixel_smoothing/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/$metric-$num ~/fixel_smoothing/Tractography/ZAPR01-FOD-Template-AmygdalaTargetMask-LHAmygdala-cluster$cluster.tck ~/fixel_smoothing/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/$metric-$num/fixel_connectivitymatrix -force

/cbica/projects/pnc_fixel_cs/bin/fixelfilter ~/fixel_smoothing/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/$metric-$num smooth -matrix  ~/fixel_smoothing/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/$metric-$num/fixel_connectivitymatrix -fwhm 10 ~/fixel_smoothing/Fixels/AmygdalaTargetMask-LHAmygdala-Cluster$cluster-Fixels/$metric-$num-smoothed -force

done
done
done
