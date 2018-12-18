# Tests in this directory

All the tests in this directory are based on the sentence classification corpus.

## Small corpus, PyTorch, default parameters

* Train: train-pytorch-def-s.xgapp
* Model directory: model-pytorch-def-s
* Application/Evaluation: apply-pytorch-def-s.xgapp
* Single feature (no feature file)
* No pretrained embeddings
* This is ordinary classification, no sequence, but the first feature is an NGRAM, so 
  treated like a sequence
* Uses a very silly model at the moment, need to convert to CNN

