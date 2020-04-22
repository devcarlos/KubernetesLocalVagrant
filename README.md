# KubernetesLocalVagrant

Kubernetes Local Development Environment with Vagrant

## About This

This is a Local Kubernetes Cluster Setup environment for Development

## Installation

Before you start check you have Python 3.x installed on your system:

```
$ python3 --version
```

## Setup

To setup the Kubernetes Cluster you must clone the github repository, enter the Kubernetes directory and execute the Python setup.py file:

```
$ git clone git@github.com:devcarlos/KubernetesLocalVagrant.git
$ cd kubernetes
$ python3 setup.py
```

## More Information

To check nodes and available information about the cluster run:

```
$ python3 status.py
```
