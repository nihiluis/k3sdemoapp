docker save k3sdemoapp:0.0.1 -o k3sdemoapp_0.0.1.tar
k3s ctr images import k3sdemoapp_0.0.1.tar
# k3s ctr images list | grep k3sdemoapp