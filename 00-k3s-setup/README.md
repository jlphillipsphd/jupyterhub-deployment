# K8S High-Availability Setup

The documentation for rancher/k3s doesn't indicate how to setup high-availibility when using *calico* for networking (the k3s default is *flannel* which has limited policy support) for better security on the cluster. So, we merge the instructions from the calico project with the rancher/k3s instructions and put the relevant commands in a shell script (shouldn't be run, just contains the commands needed to set up servers and workers). Once deployed in this way, calico can be installed. We use a custom manifest (original from the calico project) which works with Ubuntu 20.04.

`k3s-ha-prep-for-calico.sh` - contains commands to setting up k3s in high-availability mode *with calico*. This script should **not** be run directly, but the commands need to be run on the server and worker nodes as documented in the script.

`calico-custom.yaml` - modified calico manifest to allow ip-forwarding (needed for running in Ubuntu 20.04). Once the cluster is configured above, then just deploy using the standard command: `kubectl apply -f calico-custom.yaml`

