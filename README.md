# openssl-fedora
Environment to build openssl from Fedora rpm source

This repo contains the environment to build openssl through source published as part of Fedora project using Docker container.
Follow the below steps to build.

1. Clone this repository and run below commands in the repository root.

2. Build the docker image:
```
bash -x scripts/build_docker_fc.sh
```
3. Get interactive terminal into the docker
```
bash -x scripts/interactive_docker_fc.sh
```
4. Clone the Fedora openssl repo
```
git clone https://src.fedoraproject.org/rpms/openssl.git
```
5. switch to desired branch (fc28 -- RHEL8)
```
git checkout fc28
```
6. Build the rpm package
```
fedpkg --release f28 local
```
Above command will build the rpm packages are generated under openssl/x86_64/ folder
```
axolotl@xochimilco:~/git/openssl-fedora$ ls openssl/x86_64/
openssl-1.1.0i-1.fc28.x86_64.rpm
openssl-debugsource-1.1.0i-1.fc28.x86_64.rpm
openssl-libs-1.1.0i-1.fc28.x86_64.rpm
openssl-perl-1.1.0i-1.fc28.x86_64.rpm
openssl-debuginfo-1.1.0i-1.fc28.x86_64.rpm
openssl-devel-1.1.0i-1.fc28.x86_64.rpm
openssl-libs-debuginfo-1.1.0i-1.fc28.x86_64.rpm
openssl-static-1.1.0i-1.fc28.x86_64.rpm
```

# References
1. Building RPM packages: https://docs.fedoraproject.org/en-US/quick-docs/creating-rpm-packages/
2. Relationship between Fedora and RHEL: https://docs.fedoraproject.org/en-US/quick-docs/fedora-and-red-hat-enterprise-linux/
