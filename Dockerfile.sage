FROM tensorflow/tensorflow:latest-gpu
MAINTAINER Felix Candelario <frc9@columbia.edu>
RUN apt-get update
RUN apt-get -y install git
RUN git clone https://github.com/frc9/mlpipeline.git && cp ./mlpipeline/train ./ && cp ./mlpipeline/p_train ./
ENV PATH=$PATH:.
