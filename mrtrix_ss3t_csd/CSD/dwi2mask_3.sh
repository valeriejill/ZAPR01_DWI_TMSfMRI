#!/bin/bash
#

##Create a dwi brain mask with mrtrix dwi2mask
#https://3tissue.github.io/doc/single-subject.html

ARRAY=(sub-ZAPR01C193 sub-ZAPR01C309 sub-ZAPR01C412 sub-ZAPR01C650 sub-ZAPR01C765 sub-ZAPR01C991 sub-ZAPR01P552 sub-ZAPR01C207 sub-ZAPR01C311 sub-ZAPR01C426 sub-ZAPR01C656 sub-ZAPR01P120 sub-ZAPR01P581 sub-ZAPR01P998 sub-ZAPR01C105 sub-ZAPR01C209 sub-ZAPR01C318 sub-ZAPR01C427 sub-ZAPR01C811 sub-ZAPR01P188 sub-ZAPR01P594 sub-ZAPR01C127 sub-ZAPR01C210 sub-ZAPR01C328 sub-ZAPR01C468 sub-ZAPR01C820 sub-ZAPR01P287 sub-ZAPR01P672 sub-ZAPR01C130 sub-ZAPR01C219 sub-ZAPR01C347 sub-ZAPR01C470 sub-ZAPR01C714 sub-ZAPR01P718 sub-ZAPR01C134 sub-ZAPR01C220 sub-ZAPR01C351 sub-ZAPR01C472 sub-ZAPR01C891 sub-ZAPR01P363 sub-ZAPR01P726 sub-ZAPR01C140 sub-ZAPR01C262 sub-ZAPR01C354 sub-ZAPR01C527 sub-ZAPR01C750 sub-ZAPR01P372 sub-ZAPR01P752 sub-ZAPR01C148 sub-ZAPR01C264 sub-ZAPR01C540 sub-ZAPR01C759 sub-ZAPR01C915 sub-ZAPR01P396 sub-ZAPR01P802 sub-ZAPR01C172 sub-ZAPR01C269 sub-ZAPR01C584 sub-ZAPR01C763 sub-ZAPR01C952 sub-ZAPR01P478 sub-ZAPR01P831 sub-ZAPR01C178 sub-ZAPR01C305 sub-ZAPR01P526)


echo Here is information about the mrtrix job array
echo Contents of ARRAY: ${ARRAY[@]}
LENGTH=${#ARRAY[@]}
echo Num of elements in array: $LENGTH

echo SGE_TASK_ID: $SGE_TASK_ID

# array indecies start at 0, SGE_TASK_ID starts at 1
INDX=`expr $SGE_TASK_ID - 1`;

if [[ $INDX -ge $LENGTH ]]; then
 echo Array index greater than number of elements
else
 SUBJ=${ARRAY[$INDX]}

/share/apps/singularity/2.5.1/bin/singularity exec -B /data:/home/vsydnor/data /data/jag/cnds/applications/mrtrix_ss3t_beta/ss3t_beta.simg dwi2mask /home/vsydnor/data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/$SUBJ/ses-Baseline/dwi/${SUBJ}-acq-DTIb1000mb2dir64-preproc_dwi-biascorrect.mif /home/vsydnor/data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/$SUBJ/ses-Baseline/dwi/${SUBJ}-acq-DTIb1000mb2dir64-preproc_dwi-brainmask.mif

/share/apps/singularity/2.5.1/bin/singularity exec -B /data:/home/vsydnor/data /data/jag/cnds/applications/mrtrix_ss3t_beta/ss3t_beta.simg maskfilter -npass 3 /home/vsydnor/data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/$SUBJ/ses-Baseline/dwi/${SUBJ}-acq-DTIb1000mb2dir64-preproc_dwi-brainmask.mif dilate /home/vsydnor/data/jux/cnds/ZAPR01/mrtrix_ss3t_csd/$SUBJ/ses-Baseline/dwi/${SUBJ}-acq-DTIb1000mb2dir64-preproc_dwi-brainmask-dilated.mif

fi
