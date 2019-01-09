# Pre-configured ML tasks for testing the GATE LearningFramework

This contains pre-configured pipelines for training and evaluating 
various ML models on standard-datasets.

To simplify getting started, all the necessary data/documents are already included
in the repository.

## IMPORTANT: Using the correct LearningFramework version!

In order to use this repository for testing with a specific LearningFramework version, 
the version number in the various pipelines must be correct and some details
in the piipeline may need to correspond to that version of the LF as well.

In order to achieve this, the aim is to have a different branch in this repository for each 
version of the LF to use it with, e.g. v4.1.1-SNAPSHOT or v4.2 (the part after the "v" 
matching the maven version of the LF). 
The master branch will usually correspond to whatever version the master branch of
the LF is.

## How to use

Currently, the pipelines can be loaded into the GATE GUI and run from there
or on Linux-like operating systems, the pipelines can also be run from the 
command line using the `run-pipeline.sh` command. For this to work groovy
must be installed and on the command path.
