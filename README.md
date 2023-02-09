### Introduction ###

These are examples of how to debug common C/C++ bugs, such as logic errors, segmentation faults, and memory leaks, using CMAKE, GDB in Docker container.

### Docker Container  ###

To build the image with cmake and gdb

```
docker build . -t cpp-debug:0.0.1
```

To run and interact with above built image

```
docker run -it -v $(pwd)/examples:/mnt cpp-debug:0.0.1 bash
```

### Build Examples  ###

```
$ mkdir build
$ cd build
$ cmake ..
$ make
```

### Reference  ###

[How to Debug Using GDB](https://cs.baylor.edu/~donahoo/tools/gdb/tutorial.html)

[Debug C/C++ Programs in Docker Container](https://leimao.github.io/blog/Boost-Docker/)
