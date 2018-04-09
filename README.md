# CUDA-Intro
Introduction to CUDA programming

## How to Compile

```bash
$ make
```

## How to run examples

```bash
$ ./hello_world
$ ./first
$ ./3D
$ ./saxpy
```

## How to profile using nvvp and nvprof

```bash
$ PROG_PATH=/path/to/compiled_source
$ nvprof --events all --metrics all $PROG_PATH
$ nvvp $PROG_PATH
```

For more information,
[Profiler documentation](http://docs.nvidia.com/cuda/profiler-users-guide/index.html)
[CUDA documentation](http://docs.nvidia.com/cuda/)
