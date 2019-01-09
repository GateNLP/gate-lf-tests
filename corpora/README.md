# Information about the corpora

## WikiGold corpus

* Original distribution URL: https://figshare.com/articles/Learning_multilingual_named_entity_recognition_from_Wikipedia/5462500
* This is just the file wikigold.conll.txt converted to GATE FastInfoset format
* Conversion to GATE fomat was carried out using https://github.com/GateNLP/corpusconversion-conll2003
* Converted corpus from http://downloads.gate.ac.uk/corpus-wikigold-gate/wikigold-gate.zip
* Split into 115 documents training and 30 documents test set with the split-wiki-gold.sh script

## Sentence Polarity Dataset 

* Original distribution page: http://www.cs.cornell.edu/people/pabo/movie-review-data/
* Original file URL: http://www.cs.cornell.edu/people/pabo/movie-review-data/rt-polaritydata.tar.gz
* GATE version downloaded from http://downloads.gate.ac.uk/corpus-sentencepolarity-1.0-gate/sentencepolarity1.0.zip
* Splits created with script split-sentencepolarity.sh

## UD English Dataset 

* Original download page https://github.com/UniversalDependencies/UD_English-EWT
* GATE version http://downloads.gate.ac.uk/universal-dependencies-gate/UD_English.zip

## Ionosphere Dataset

* Original dataset: https://archive.ics.uci.edu/ml/datasets/ionosphere
* Purpose: classification (2 classes) from numeric-only features
* Converted to GATE format by creating fake "word" texts, one per line and instance from the dataset
  then creating one "Mention" annotation for each word and setting the features of that annotation
  to the features of the instance. Target feature name is "class"
* Train/test split: 30 instances removed from training and used for test

## Abalone Dataset

* Original dataset: https://archive.ics.uci.edu/ml/datasets/abalone
* Purpose: regression (integer values only) from numeric features plus one categorical feature.
* Converted in the same way as Ionosphere, target feature name is "target"
* Train/test split: 400 instances removed from training and used for test
