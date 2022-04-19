# Repo
# helm repo add longhorn https://charts.longhorn.io
# helm repo update

# kubectl create namespace longhorn-system

# Use local settings:
# defaultDataPath: "/gluster/longhorn/"
helm upgrade --install longhorn longhorn/longhorn \
     --namespace longhorn-system

# Disable the local-path default storage class
# Edit /var/lib/rancher/k3s/server/local-storage.yaml and change it to "false" there instead.
# This will probably have to be done after k3s upgrades.
# For a quick (temporary) way to do the same:
# kubectl patch storageclass local-path -p '{"metadata": {"annotations":{"storageclass.kubernetes.io/is-default-class":"false"}}}'
