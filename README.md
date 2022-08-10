[![calebarcher](https://circleci.com/gh/calebarcher/circleci-docs.svg?style=svg)](https://app.circleci.com/pipelines/github/calebarcher/Udacity_p4_Operationalize_Microservice)

## Project Description

The objective of this project is to operationalize a Machine Learning Microservice API. This will include setting up our virtual environment, installing dependencies and linting.

After successfully building and linting, the application is containerized using docker. The containerized application is tested locally and then pushed to Docker Hub. Next I configure Kubernetes and create a cluster using minikube then create a deployment using the image that was previously pushed to Docker Hub.

Finally, I created my CI pipeline using circleci.

I will be working with a pre-trained `sklearn` model that predicts housing prices in Boston using certain parameters. This project is a flask application built with python.

---

## Project Environment
- Virtual environment using python 3.8
- Makefile: this is used to simplify our environment setup and project building and linting tasks
- This project uses bash scripts to compartmentalize and simplify certain tasks. They are as follows;
  - run_docker.sh: this script builds, tags and runs the Docker image
  - upload_docker.sh: this script uploads the the Docker image to Docker Hub
  - run_kubernetes.sh: this script creates the deployment in our minikube cluster. It also contains the code for port fowarding
  - make_prediction.sh: this script sends a payload to our application to trigger a prediction.
- Dockerfile: This file contains the isntructions docker uses to build the docker image
- app.py: This is our flask application.
- requirements.txt: this file holds all our project dependencies that will be installed in when `make install` is run
* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 

## Running the App
1. Run `make install` to install the dependencies
2. Standalone:  `python app.py`
3. Build docker image and run container:  `./run_docker.sh`
4. make prediction: `./make_prediction.sh`
4. Create deployment and run in Kubernetes cluster:  `./run_kubernetes.sh`

