#! /bin/bash

# Create data directories
mkdir -p /data/gpdata/qddir && chown -R gpadmin:gpadmin /data/gpdata

# Run gpinitsystem as gpadmin user
su gpadmin -c "
   # Run gpinitsystem
   cd /gpdb-scripts
   source /usr/local/gpdb/greenplum_path.sh
   gpinitsystem -a -c configs/clusterConfigFile -p configs/clusterConfigPostgresAddonsFile -h configs/hostfile
"

# Create environment file
cat > ~gpadmin/env.sh <<EOF
#! /bin/bash

source /usr/local/gpdb/greenplum_path.sh
export MASTER_DATA_DIRECTORY=/data/gpdata/qddir/gpseg-1
export PGPORT=7000

EOF
