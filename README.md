[![alizeshaan](https://circleci.com/gh/alizeshaan/udacitykubernetes.svg?style=svg)](https://app.circleci.com/pipelines/github/alizeshaan/udacitykubernetes/7/workflows/7f279b21-5bd3-40e8-9ce7-5630d2fd5638/jobs/7/steps)


## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:
* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl


_________
## Project Summary
This project aimed to create a containerized app to predict housing prices, which could recieve user input and return a prediction.

The steps taken to ensure that this app was created correctly were:
1) Pulling the app code from a Github Account
2) Creating a docker image so that we have an environment in which to host the app
3) Checking steps 1 and 2 by way of linting the files app.py and the dockerfile to check they were syntactically correct (This required some ammendments of app.py in order to pass the tests)
4) We then ran the app to test we could indeed create predictions
5) Once we were happy with the docker image and app, we pushed it our remote repository in docker, ready for kubernetes and the ci/cd pipeline to pull
6) We set up a kubernetes cluster, using minikube, to deploy the app and tested that we could still make predictions when using kubernetes
7) After 6 had been completed, we integreated with circle ci to ensure that all the steps taken so far still worked and would continue to work (and if not we'd be alerted as to why) if any more changes were made to the code. In order to do this, the .yml file provided had to be adjusted as the formatting (lack of indentation) when given wouldn't all the ci/cd pipeline to build 
8) After 7, when running the pipeline, all steps passed and we were able to get a "passed" icon which has been included in the this readme.

### To run the app (as a stand alone): 
  1) Insure that the libraries listed in requirements.txt are installed 
              pip install --trusted-host pypi.python.org -r ./requirements.txt
  2) Run the app from cmd (you need to be in the same folder as the app)
              python app.py 
              
### To generate a prediction (app needs to be running)
  1) run the bash file (you need to have access to a bash terminal, e.g. the git bash terminal or a linux terminal)
              ./make_prediction
              
### To run app using the container, type the following in a bash terminal:
  1) ./docker_run.sh
  2) ./make_prediction.sh
  
  
 ### Files in the Repo:
  1) .circleci/config.yml                 The configuration file for circle ci
  2) model_data/*                         Files for the predictive model
  3) output_txt_files/*                   Contain files that hold the output from docker and kubernetes (from terminal)
  4) docker_run.sh                        File used to build dockerfile into an image and then run a container from the image
  5) Dockerfile                            Specification of the docker image
  6) make_prediction.sh                   Bash script to give the app data on which to make a predicition
  7) Makefile                              File to set up python environment and test syntax in python code and docker file
  8) run_kubernetes.sh                    File to create a kubernetes cluster to run a container based of the image that was                                                  pushed to the repo
  9) upload_docker.sh                     bash file to upload the locally created docker image to the repo
  
  
 
