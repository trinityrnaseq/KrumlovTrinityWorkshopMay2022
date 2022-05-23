#!/bin/bash

set -ex

cd data/

wget https://data.broadinstitute.org/Trinity/RNASEQ_WORKSHOP/trinotate_data.Krumlov2019.tar.gz

tar xvf trinotate_data.Krumlov2019.tar.gz
rm -f trinotate_data.Krumlov2019.tar.gz

for gz_file in *.gz; do gunzip -c $gz_file > ${gz_file%.*}; done

set +e

echo done
