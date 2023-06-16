Build an ostree VM with microlat:

1. Install docker
2. Run "tools/build.sh configs/ostree-amd64"", this will enter the container.
3. Run "microlat create workspace --config /config <name of workspace>" to create a workspace
4. Run "microlat create ostree" to create the ostree commit.
5. Run "microlat create image" to create an image to run with libvirt.

Finally run:

tools/run-vm.sh <name of vm> <path to image>
