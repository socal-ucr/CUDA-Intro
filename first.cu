
#include <stdio.h>
#include <cuda.h>

__global__
void MyKernel()
{
    printf("blockIdx.x=%u,ThreadIdx.x=%u\n",blockIdx.x,threadIdx.x);
    return;
}

int main()
{
    printf("Kernel (Blocks x Threads)\n");
    MyKernel<<<1, 2>>>();
    printf("\n\n****Kernel (1x2) launched****\n\n");
    cudaDeviceSynchronize();
    printf("\n****Kernel finished****\n\n");
    MyKernel<<<2, 1>>>();
    printf("\n\n****Kernel (2x1) launched****\n\n");
    cudaDeviceSynchronize();
    printf("\n****Kernel finished****\n\n");
    MyKernel<<<2, 2>>>();
    printf("\n\n****Kernel (2x2) launched****\n\n");
    cudaDeviceSynchronize();
    printf("\n****Kernel finished****\n\n");
    return 0;
}
