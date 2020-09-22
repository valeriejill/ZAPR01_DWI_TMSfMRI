cd $TMPDIR
export SINGULARITY_CACHEDIR=`pwd`
export SINGULARITY_TMPDIR=`pwd`
export SINGULARITY_LOCALCACHEDIR=`pwd`

/share/apps/singularity/2.5.1/bin/singularity build ss3t_beta.simg docker://pennbbl/ss3t_beta:0.0.1
mv ss3t_beta.simg /data/jag/cnds/applications/mrtrix_ss3t_beta


