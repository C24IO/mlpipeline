# Session Agenda
- Introduce self
- Introduce team
 - open /Users/fcandela/Desktop/mlWorkshops/YoMLWorkshopRocks.pptx
- Poll room
 - What do you want out of this time?
 - Adjust as necessary
- Proposed Agenda
  - Introduction to AWS & EC2
  - P3 Deep dive
  - Introduction to Sagemaker
- Next Steps

## Introduction to AWS & EC2
- open /Users/fcandela/Desktop/mlWorkshops/Intro_to_Cloud_and_EC2_Overview.pptx

## P3 Deep Dive
- open /Users/fcandela/Desktop/mlWorkshops/P3\ Training\ Talk.pdf
- Show P3 instance
 - Bring up console
 - start i-0d745cb4a725bfbf8 and login


    ssh -L localhost:8888:localhost:6006 -i aws.pem ubuntu@34.217.50.81
    ec2metadata
    time nvidia-smi
    sudo nvidia-smi -pm 1
    sudo nvidia-smi --auto-boost-default=0
    vim wide_deep.py
    python data_download.py
    tensorboard --logdir=/tmp/census_model &
    python wide_deep.py --model-type=wide --train_epochs 320 --test_name=16Xtrain_320_epochs

 - change i-0d745cb4a725bfbf8 to p3.16xlarge and login

## Introduction to Sagemaker
- open /Users/fcandela/Desktop/mlWorkshops/Amazon\ SageMaker\ Intro.pdf
- Show console
  - Show create new
  - Show existing
  - Open up Mnotebook
  - Show models
- Show programming paradigm for models


    vim /Users/fcandela/dev/mlpipeline/Dockerfile
    vim /Users/fcandela/dev/mlpipeline/train
    :35
    :39
    :129
    :213

- Build docker image


    aws ecr get-login --no-include-email --region us-west-2
    ssh -i aws.pem ubuntu@ec2-54-213-115-53.us-west-2.compute.amazonaws.com
    docker build -t tf-dock .
    docker tag tf-dock:latest 007038732177.dkr.ecr.us-west-2.amazonaws.com/tf-dock:latest
    docker push 007038732177.dkr.ecr.us-west-2.amazonaws.com/tf-dock:latest

- Create job


    vim /Users/fcandela/dev/mlpipeline/create_job.py
    python /Users/fcandela/dev/mlpipeline/create_job.py

- Show result

## Next Steps

