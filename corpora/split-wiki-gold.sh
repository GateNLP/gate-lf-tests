#!/bin/bash

ls wikigold-gate/*.finf | shuf > wikigold.txt

mkdir wikigold_train
mkdir wikigold_test

# approximately 80/20 split corresponds to 115/30 documents
head -115 < wikigold.txt | xargs -n 1 -I % cp % wikigold_train/
tail -n +116 < wikigold.txt | xargs -n 1 -I % cp % wikigold_test/

rm -rf ./wikigold-gate/
rm ./wikigold.txt 


