#include <stdio.h>
#include <stdlib.h>
#include <cuda.h>

__global__
void MyKernel()
{
    printf("threadId[%u]=Hello World\n",threadIdx.x);
    return;
}

int main()
{
    MyKernel<<<1,1>>>();
    printf("****Kernel launched****\n\n");
    cudaDeviceSynchronize();
    printf("\n****Kernel finished****\n");
    return 0;
}
