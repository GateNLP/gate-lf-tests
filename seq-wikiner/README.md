# Tests in this directory

All the tests in this corpus are based on the WikiNER corpus


## Pytorch, just the string feature

* Train: train-pytorch-singlefeat1.xgapp
* Apply: apply-pytorch-singlefeat1.xgapp
* Model directory: model-pytorch-singlefeat1
* Uses just the original string, no features, no embeddings
* Does not actually produce a usable model at the moment, but shows that 
  the full lifecycle works

## Pytorch, test string feature plus one numeric feature

* Train: train-pytorch-multifeat2.xgapp
* Model directory: model-pytorch-multifeat2


## Keras, just the string feature

* Train: train-keras-singlefeat1.xgapp
* Apply: apply-keras-singlefeat1.xgapp
* Model directory: model-keras-singlefeat1
* Uses just the original string, no features, no embeddings
* Does not actually produce a usable model at the moment, but shows that
  the full lifecycle works


