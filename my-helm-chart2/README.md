# filepath: /my-helm-chart/my-helm-chart/README.md
# My Helm Chart

## Overview
This Helm chart deploys a full-stack application consisting of an API service, a front-end service, and a MongoDB database. It includes all necessary Kubernetes resources such as Deployments, Services, Ingress, and Horizontal Pod Autoscaler.

## Prerequisites
- Kubernetes 1.12+
- Helm 3.x

## Installation
To install the chart, use the following command:

```bash
helm install my-release ./my-helm-chart
```

Replace `my-release` with your desired release name.

## Configuration
The default configuration values can be found in `values.yaml`. You can override these values during installation using the `--set` flag or by providing a custom `values.yaml` file.

### Example
To set a custom image for the API service, you can run:

```bash
helm install my-release ./my-helm-chart --set api.image=joseph888/apinombres:1.0
```

## Resources
This chart will create the following resources:
- Deployments for the API, front-end, and MongoDB services
- Services for the API, front-end, and MongoDB
- Ingress for routing traffic
- Horizontal Pod Autoscaler for the API service

## Uninstallation
To uninstall the chart, use the following command:

```bash
helm uninstall my-release
```

## Contributing
Contributions are welcome! Please open an issue or submit a pull request for any improvements or bug fixes.

## License
This project is licensed under the MIT License.