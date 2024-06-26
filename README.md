# Deploying and Managing an NGINX Application on Google Kubernetes Engine (GKE) using Terraform, GitHub Actions, and Spin Up/ burn Down



![image](https://github.com/NAGESHGOWDA1993/GKE-automation/assets/109476085/fe14613c-30b8-4bea-b1e5-a7e2171b4939)




# Objective

Automate the creation of a Google Kubernetes Engine (GKE) cluster using Terraform, deploy a single web application powered by NGINX, and manage its lifecycle with Spin Up/Down. Ensure that the environment is ephemeral and can be easily recreated.

# Prerequisites

Google Cloud Platform (GCP) Account: Set up a GCP account if you haven’t already.
GitHub Repository: Create a new or use an existing GitHub repository for your project.

# Steps

# Configure GCP Credentials:
Create a service account in GCP with necessary permissions (e.g., Compute Admin, Kubernetes Engine Admin).
Generate a JSON key for the service account.
Store the JSON key securely (e.g., as a GitHub secret).

# Write Terraform Configuration:
Create a directory for your Terraform files (e.g., terraform/).
Write a main.tf file defining your GKE cluster configuration (node pools, network policies, etc.).

# GitHub Actions Workflow:
In your repository, create a .github/workflows/ directory.
Add a YAML file (e.g., gke-deploy.yml) for your GitHub Actions workflow.
Configure the workflow to:
Trigger on pushes to the main branch.
Set up GCP credentials using the stored JSON key.
Run Terraform commands to create the GKE cluster.
Authenticate with the GKE cluster.
Deploy your NGINX web application (e.g., using kubectl apply).

# Spin Up/Down Integration:
Install and configure Spin Up/Down (a tool for managing scheduled startup and shutdown of resources).
Set up schedules to start and stop your GKE cluster based on usage patterns (e.g., business hours).

   docker build -t nageshaks/tm:1.0 .
   /Applications/Docker.app/Contents/Resources/bin/docker build -t nageshaks/tm:2.0
   /Applications/Docker.app/Contents/Resources/bin/docker build -t nageshaks/tm:2.0 .
   /Applications/Docker.app/Contents/Resources/bin/docker push nageshaks/tm:2.0
