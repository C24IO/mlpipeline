FROM tensorflow/tensorflow:latest-gpu
MAINTAINER Felix Candelario <frc9@columbia.edu>
RUN apt-get update
RUN apt-get -y install git
RUN rm train
RUN rm -rf ./mlpipeline
RUN git clone https://github.com/frc9/mlpipeline.git && cp ./mlpipeline/train ./
ENV PATH=$PATH:.
