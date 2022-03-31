# Terra node with mempool hack and rocksdb database

## RocksDB v6.27.3 installation

1. Clone the repo
```sh
git clone https://github.com/facebook/rocksdb.git
```

2. checkout v6.27.3
```sh
cd rocksdb
git checkout v6.27.3
```
3. build
```sh
sudo make install-shared
```

## Build terrad

1. Clone custom `core`, `cosmos-sdk` and `tendermint` in the same folder:
```sh
clone https://github.com/jrmmr/core
clone https://github.com/jrmmr/cosmos-sdk
clone https://github.com/jrmmr/tendermint
```
2. create `tendermint` and `cosmos-sdk` folders inside `core` folder
```sh
cd core
mkdir tendermint
mkdir cosmos-sdk
```

3. build `terrad`
execute `01_build.sh` script
```sh
./01_build.sh
```

4. take a coffee

5. When the build is done, there must be in the `build` subfolder, the `terrad` file and the `libwasmvm.so` file 

6. copy `libwasmvm.so` in a lib folder as _/usr/local/lib_ and update `LD_LIBRARY_PATH` env if needed.

7. copy `terrad` in `~/go/bin folder`


## Convert leveldb files to rocksdb

1. Clone the repo
```sh
git clone https://github.com/terra-money/level-to-rocks
```

2. build
```sh
make build
```

3. How to use
3.1 create a directory for rocksdb
```sh
mkdir -p data_rocksdb; cd data_rocksdb
```
3.2 execute level-to-rocks
> Usage: level-to-rocks \<directory> \<db name>
For example if you have application.db in directory `data
```sh
level-to-rocks ~/.terra/data application
```

4. take a coffee
5. When it's done, move the converted files instead of the originals

## start `terrad`