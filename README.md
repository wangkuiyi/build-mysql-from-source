# `build-mysql-from-source`

Get this tool

```bash
cd /tmp
git clone https://github.com/wangkuiyi/build-mysql-from-source # Get this tool
```

Build the Docker image

```bash
docker build -t mysql:dev .
```

Checkout MySQL source code

```bash
cd build-mysql-from-source
git clone --recursive -b 5.6 https://github.com/mysql/mysql-server # Check out MySQL source code and switch to version 5.6
```

Run a Docker container to build the source code

```bash
docker run --rm -it -v $PWD:/work -w /work mysql:dev
```
