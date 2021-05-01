# Setup controller-runtime/envtest on Mac M1

The key point is k9s control-plane assets, etcd, kube-apiserver, and kubectl.
kubectl is okay since it already released `darwin/arm64` version.
As for etcd and kube-apiserver, we have to build manually by ourselves.


## etcd 

KubeVela uses controller-runtime `v0.6.0`, so I choose etcd `v3.4.0`, because
etcd `v3.5.0` has a problem to setup envtest.

> https://github.com/kubernetes-sigs/controller-runtime/issues/1407

```shell
git clone git@github.com:etcd-io/etcd.git
cd etcd
./build
```

Then set env `TEST_ASSET_ETCD` to `$GOPATH/src/github.com/etcd-io/etcd/bin/etcd`. 

```shell
export TEST_ASSET_ETCD=$GOPATH/src/github.com/etcd-io/etcd/bin/etcd
```

> I don't know why etcd cannot run if move etcd bin to another dir...

## kube-apiserver

I use k8s `release-1.18.0` because higher version k8s is not compatible with
controller-runtime `v0.6.0`.
But before version `1.21`, k8s doesn't support `darwin/arm64` release, so we
have to modify `hack/lib/golang.sh` as below.

```shell script
# The server platform we are building on.
readonly KUBE_SUPPORTED_SERVER_PLATFORMS=(
  linux/amd64
  linux/arm
  linux/arm64
  darwin/arm64 # <===  ADD
  linux/s390x
  linux/ppc64le
)

# The node platforms we build for
readonly KUBE_SUPPORTED_NODE_PLATFORMS=(
  linux/amd64
  linux/arm
  linux/arm64
  linux/s390x
  linux/ppc64le
  darwin/arm64 # <===  ADD
  windows/amd64
)

# If we update this we should also update the set of platforms whose standard
# library is precompiled for in build/build-image/cross/Dockerfile
readonly KUBE_SUPPORTED_CLIENT_PLATFORMS=(
  linux/amd64
  linux/386
  linux/arm
  linux/arm64
  linux/s390x
  linux/ppc64le
  darwin/amd64
  darwin/386
  darwin/arm64 # <===  ADD
  windows/amd64
  windows/386
)
```

Then build k8s binaries.

```shell script
cd k8s.io/kubernetes
make clean
make
```

Finally, set env `TEST_ASSET_KUBE_APISERVER`.

```shell
export TEST_ASSET_KUBE_APISERVER=$GOPATH/src/k8s.io/kubernetes/_output/local/bin/darwin/arm64/kube-apiserver
```

## kubectl

Just use the kubectl bin we built with kube-apiserver together.
```shell
export TEST_ASSET_KUBECTL=$GOPATH/src/k8s.io/kubernetes/_output/local/bin/darwin/arm64/kubectl
```
