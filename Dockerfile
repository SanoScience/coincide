# Include the base image for the docker

FROM tensorflow/tensorflow:latest-gpu-jupyter


# Setting working directory to /opt, rather than doing all the work in root.
# Copying the /code directory into /opt
WORKDIR /opt
COPY . /opt

# Running pip install to download required packages
RUN apt-get update ##[edited]
RUN pip install -r requirements.txt
RUN pip install keras


# Setting the default code to run when a container is launched with this image.
CMD ["jupyter", "notebook", "--port=88899", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
