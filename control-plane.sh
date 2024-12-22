# Initializing Kubernetes K8s Master 
kubeadm init --apiserver-advertise-address <master1-ip-address> --pod-network-cidr 10.244.0.0/16 --cri-socket unix:///var/run/containerd/containerd.sock 

sudo kubeadm join <master1ipaddress>:6443 --token pr8xnl.99dpk7a0xejyh5c5 \
    --discovery-token-ca-cert-hash sha256:98722f4de3419b407454b3c9c7327c43e4cb80a021f4e3135ffc4a390a6d09cf \
    --control-plane

# Execute the following 3 commands using normal user priveleges

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://reweave.azurewebsites.net/k8s/v1.31/net.yaml
