
#include <stdio.h>
#include <cuda.h>

__global__
void MyKernel()
{
    printf("ThreadId(x,y,z)=(%u,%u,%u)blockId(x,y,z)=(%u,%u,%u)\n",
            threadIdx.x, threadIdx.y, threadIdx.z,
            blockIdx.x, blockIdx.y, blockIdx.z);
    return;
}

int main()
{
    MyKernel<<<2,2>>>();
    printf("\n\n****Kernel (2x2)=4 threads launched****\n\n");
    cudaDeviceSynchronize();
    printf("\n****Kernel finished****\n\n\n\n");

    dim3 numBlks(2,2,2);
    dim3 threadsPerBlk(2,2,2);

    MyKernel<<<numBlks,threadsPerBlk>>>();
    printf("\n\n****Kernel (blocks(2x2x2), threads(2,2,2))=64 threads launched****\n\n");
    cudaDeviceSynchronize();
    printf("\n****Kernel finished****\n\n");
    return 0;
}
