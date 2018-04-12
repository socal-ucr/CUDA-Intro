
all:
	nvcc hello_world.cu -o hello_world
	nvcc first.cu -o first
	nvcc 3D.cu -o 3D
	nvcc sax.cu -o sax

clean:
	rm -rf hello_world first 3D sax
