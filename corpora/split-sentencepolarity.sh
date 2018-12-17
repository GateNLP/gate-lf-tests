#!/bin/bash

ls sentencepolarity/*neg*.finf | shuf > sentencepolarity-neg.txt
ls sentencepolarity/*pos*.finf | shuf > sentencepolarity-pos.txt

mkdir sentencepolarity_train
mkdir sentencepolarity_dev
mkdir sentencepolarity_test

# 80/10/10 split corresponds to 4265/533/533 documents for each class
head -4265 < sentencepolarity-neg.txt | xargs -n 1 -I % cp % sentencepolarity_train/
head -4265 < sentencepolarity-pos.txt | xargs -n 1 -I % cp % sentencepolarity_train/

tail -n +4266 < sentencepolarity-neg.txt | head -533 | xargs -n 1 -I % cp % sentencepolarity_dev/
tail -n +4266 < sentencepolarity-pos.txt | head -533 | xargs -n 1 -I % cp % sentencepolarity_dev/

tail -n +4799 < sentencepolarity-neg.txt | xargs -n 1 -I % cp % sentencepolarity_test/
tail -n +4799 < sentencepolarity-pos.txt | xargs -n 1 -I % cp % sentencepolarity_test/

rm -rf ./sentencepolarity/
rm ./sentencepolarity-pos.txt ./sentencepolarity-neg.txt


