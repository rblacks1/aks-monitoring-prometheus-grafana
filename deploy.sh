#!/bin/bash

# Add Prometheus Helm repository
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

# Update Helm repositories
helm repo update

# Install Prometheus + Grafana monitoring stack
helm upgrade --install monitoring prometheus-community/kube-prometheus-stack \
-f monitoring/values.yaml