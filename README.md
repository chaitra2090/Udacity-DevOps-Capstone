# Cloud Devops Engineer Nonodegree Captone Project

In this project you will apply the skills and knowledge which were developed throughout the Cloud DevOps Nanodegree program. These include:

- Working in AWS
- Using Jenkins or Circle CI to implement Continuous Integration and Continuous Deployment
- Building pipelines
- Working with Ansible and CloudFormation to deploy clusters
- Building Kubernetes clusters
- Building Docker containers in pipelines

### Step 1: Propose and Scope the Project

The application used in this project is called NewsPie. Newspie is an open source minimalistic news aggregator built with Flask and powered by News API.
Link: [NewsPie](https://github.com/skamieniarz/newspie)

### Step 2: Use Jenkins or Circle CI, and implement blue/green or rolling deployment.

CircleCI was used to create the CI/CD pipeline. Rolling deployment was the strategy used to roll out code. 

```sh
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  25% max unavailable, 25% max surge
```

### Step 3: Pick AWS Kubernetes as a Service, or build your own Kubernetes cluster.

eksctl is a simple CLI tool for creating clusters on EKS - Amazon's new managed Kubernetes service for EC2. It is written in Go, uses CloudFormation, was created by Weaveworks and it welcomes contributions from the community.
Link: [eksctl](https://eksctl.io/)

EKS Cluster Creation on local VM:

```sh
$ eksctl create cluster --name devops-capstone --nodegroup-name capstone-kube-workers --node-type t2.small --nodes 2 --region us-west-2
```

### Step 4: Build your pipeline

Files included in the project are as follows:
 - **Makefile**: Creates a virtualenv and activates it. Installs necessary dependencies.
 - **Dockerfile**: Installs packages in requirements.txt and builds the docker image.
 - **kube_scripts/deployment.yml**: The Deployment provides declarative updates for Pods and ReplicaSets. The service exposes an application running on a set of Pods as a network service.

### Step 5: Build your pipeline

Builds were performed and validated. Screenshots are included in **screenshots/**.

