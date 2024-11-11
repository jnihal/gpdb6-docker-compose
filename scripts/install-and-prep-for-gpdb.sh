#! /bin/bash

# Install GPDB
cd /gpdb-src
make install -s

# Source GPDB and install pygresql
source /usr/local/gpdb/greenplum_path.sh
pip install pygresql

# Start sshd server
/usr/sbin/sshd

mkdir -p /data/gpdata/primary /data/gpdata/mirror && chown -R gpadmin:gpadmin /data/gpdata
