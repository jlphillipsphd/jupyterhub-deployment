# General commands - don't run on a single machine

###
### On first server node:
###

# Directions from rancher
K3S_TOKEN=SECRET k3s server --cluster-init

# Directions from calico
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--flannel-backend=none --disable-network-policy --cluster-cidr=192.168.0.0/16" sh -

### Merged instructions for deployment
curl -sfL https://get.k3s.io | K3S_TOKEN=SECRET INSTALL_K3S_EXEC="--cluster-init --flannel-backend=none --disable-network-policy --cluster-cidr=192.168.0.0/16" sh -


###
### On other two (or more to make an odd total number) nodes:
###

# Directions from rancher
K3S_TOKEN=SECRET k3s server --server https://<ip or hostname of server1>:6443

# Directions from calico
# thisfiledoesnotexist.com

# Merged instructions for deployment
curl -sfL https://get.k3s.io | K3S_TOKEN=SECRET INSTALL_K3S_EXEC="--server https://serverip:6443 --flannel-backend=none --disable-network-policy --cluster-cidr=192.168.0.0/16" sh -


###
### On any worker nodes:
###

# Directions from calico (workers)
curl -sfL https://get.k3s.io | K3S_URL=https://serverip:6443 K3S_TOKEN=mytoken sh -

# Merged instructions for deployment
curl -sfL https://get.k3s.io | K3S_URL=https://serverip:6443 K3S_TOKEN=SECRET sh -

