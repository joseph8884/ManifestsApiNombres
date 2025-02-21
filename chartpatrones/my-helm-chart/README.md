# README.md

# My Helm Chart

This Helm chart deploys a full-stack application consisting of an API service, a front-end application, and a MongoDB database. It includes all necessary Kubernetes resources such as Deployments, Services, Ingress, and Horizontal Pod Autoscaler.

## Chart Contents

- **templates/**: Contains the Kubernetes manifests for the application.
  - **api-deployment.yaml**: Deployment for the API service.
  - **api-service.yaml**: Service for the API.
  - **front-deployment.yaml**: Deployment for the front-end application.
  - **front-service.yaml**: Service for the front-end application.
  - **hpa-api.yaml**: Horizontal Pod Autoscaler for the API service.
  - **ingress.yaml**: Ingress resource for routing external traffic.
  - **mongodb-deployment.yaml**: Deployment for MongoDB.
  - **mongodb-service.yaml**: Service for MongoDB.
  - **_helpers.tpl**: Helper templates for reuse.

## Installation

To install the chart, use the following command:

```bash
helm install my-release ./my-helm-chart
```

Replace `my-release` with your desired release name.

## Configuration

The default configuration values can be found in the `values.yaml` file. You can customize the deployment by overriding these values. For example, to set a custom image for the API service, you can use:

```yaml
image:
  repository: my-custom-repo/my-api
  tag: latest
```

## Usage

After installation, you can access the services through the Ingress resource. Make sure your Ingress controller is set up correctly to route traffic to the services.

## License

This project is licensed under the MIT License.