
all:
	nvcc hello_world.cu -o hello_world
	nvcc first.cu -o first
	nvcc 3D.cu -o 3D
	nvcc sax.cu -o sax
	nvcc vector_add.cu -o vector_add
	nvcc cublas_mm.cu -lcublas -o cublas_mm

clean:
	rm -rf hello_world first 3D sax vector_add cublas_mm
