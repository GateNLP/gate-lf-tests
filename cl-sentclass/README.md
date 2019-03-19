# Tests in this directory

All the tests in this directory are based on the sentence classification corpus.

## Small corpus, PyTorch, single feature

* Train: train-pytorch-singlefeat1-s.xgapp
* Model directory: model-pytorch-singlefeat1-s
* Application/Evaluation: apply-pytorch-singlefeat1-s.xgapp
* Single feature (no feature file)
* No pretrained embeddings
* This is ordinary classification, no sequence, but the first feature is an NGRAM, so 
  treated like a sequence
* Uses a very silly model at the moment, need to convert to CNN

## Small corpus, PyTorch, multiple features

* Train: train-pytorch-multifeat1-s.xgapp
* Model directory: model-pytorch-multifeat1-s
* Application/Evaluation: apply-pytorch-multifeat1-s.xgapp
* String and ANNIE POS tag
* No pretrained embeddings
* This is ordinary classification, no sequence, but both features are NGRAM, so
  treated like sequences

## Notes

* feats-multifeat2 and train-pytorch-multifeat2-l are to test if having numeric features works with classification
