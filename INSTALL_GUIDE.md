# Environment Settings

1. Install in Ubuntu22.04 VM
2. Prepare for packages mentioned in docs/02-getting-started.md
    * Python 3.9+
        * Default python3 in Ubuntu22.04 should be 3.10
    * sudo apt install golang
        * Use "$ go version" to make sure the version is 1.16+
    * sudo snap install golangci-lint
3. Prepare for packages mentioned in docs/03-fiab.md
    * jq
        * $ sudo apt install -y jq
    * docker
        * Follow stepss [here](https://docs.docker.com/engine/install/ubuntu/) and [here](https://docs.docker.com/engine/install/linux-postinstall/)
        * $ wget https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/containerd.io_1.6.6-1_amd64.deb
        * $ wget https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/docker-ce-cli_20.10.17~3-0~ubuntu-jammy_amd64.deb
        * $ wget https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/docker-ce_20.10.17~3-0~ubuntu-jammy_amd64.deb
        * $ wget https://download.docker.com/linux/ubuntu/dists/jammy/pool/stable/amd64/docker-compose-plugin_2.6.0~ubuntu-jammy_amd64.deb
        * $ cd ~/Downloads
        * $ sudo dpkg -i containerd.io_1.6.6-1_amd64.deb
        * $ sudo dpkg -i docker-ce-cli_20.10.17~3-0~ubuntu-jammy_amd64.deb
        * $ sudo dpkg -i docker-ce_20.10.17~3-0~ubuntu-jammy_amd64.deb
        * $ sudo dpkg -i docker-compose-plugin_2.6.0~ubuntu-jammy_amd64.deb
        * $ sudo usermod -aG docker $USER
        * Logout and login again to enable the group membership
        * $ docker run hello-world
            * Just to make sure the permission of docker
    * minikube
        * Follow steps [here](https://computingforgeeks.com/how-to-install-minikube-on-ubuntu-debian-linux/)
        * $ sudo apt update && apt install -y apt-transport-https && apt upgrade -y
        * $ sudo apt install -y virtualbox virtualbox-ext-pack
        * $ wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
        * $ sudo chmod +x minikube-linux-amd64
        * $ sudo mv minikube-linux-amd64 /usr/local/bin/minikube
        * Use "$ minikube version" to check the installed version of minikube
    * kubectl
        * Follow steps [here](https://computingforgeeks.com/how-to-install-minikube-on-ubuntu-debian-linux/)
        * $ curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectls
        * $ sudo chmod +x ./kubectl
        * $ sudo mv ./kubectl /usr/local/bin/kubectl
        * Use "$ kubectl version" to check the installed version of kubectl
    * helm
        * $ sudo snap install helm --classic
        * Use "helm versoin" to check the installed version of helm
4. Install other packages
    * $ sudo apt install -y resolvconf