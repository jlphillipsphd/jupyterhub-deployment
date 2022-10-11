# jupyterhub-deployment
Setup of servers for JupyterHub hosting

## Finished:

1. [00-k3s-setup](https://github.com/jlphillipsphd/jupyterhub-deployment/tree/main/00-k3s-setup) - Provides the commands and configuration files needed to deploy [k3s](https://k3s.io/) with [calico](https://www.tigera.io/project-calico/) in **high-availablity** mode.
2. Install [helm](https://helm.sh/) using standard procedures for k8s deployment managment.

## Remaining:

3. Setup glusterfs provisioner
4. Setup jupyterhub deployment

## Production Longhorn

Needed to fix an issue with multipath which was causing PVCs to become unavailable: [fix here](https://longhorn.io/kb/troubleshooting-volume-with-multipath/).
