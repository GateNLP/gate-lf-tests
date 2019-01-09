# Tests in this directory

All the tests in this directory are based on the Universal Dependencies corpus, using
the UPOS tag as the tagging targets.

## Small corpus, PyTorch, multiple features

* Train: train-pytorch-multifeat1-s.xgapp
* Model directory: model-pytorch-multifeat1-s
* Application/Evaluation: apply-pytorch-multifeat1-s.xgapp
* Multiple features per sequence element: feats-multifeat1.xml
* No pretrained embeddings
* This is sequence tagging, using multiple inputs/features per element


## Small corpus, PyTorch, single feature

* Train: train-pytorch-singlefeat1-s.xgapp
* Model dir: model-pytorch-singlefeat1-s
* Application/Evalution: apply-pytorch-singlefeat1-s.xgapp
* Single feature: uses default by leaving feature file empty
* No preptrained embeddings
* Sequence tagging using a single input


