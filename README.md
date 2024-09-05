# Example Stack for Kubernetes - GKE
This example demonstates an HCP Terraform Stack that creates an GKE cluster together with Kubernetes resources. 
It leverages deferred actions to enable users to create all the resources in the correct order using a single deployment action.

## Prerequisites

* Valid GCloud credentials configured in the local environment (eg. via `gcloud auth`).

## How to use:

1. Apply the `_setup` module from your local environment. This does two things:
    * Creates the ODIC IDP configuration in GCloud which enables TFC workload identity authentication from Stacks.
    * Creates the Stack itself in TFC. It doesn't configure it for the custom agent pool mentioned above due to limitations in the TFE provider. 

2. Fetch configuration in the Stack UI to trigger the plan / apply cycle.