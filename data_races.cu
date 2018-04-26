#include <thrust/device_vector.h>
#include <iostream>
#include <cuda.h>
#include <cuda_runtime.h>
#include <sys/time.h>

__global__ void increment(int *data_ptr)
{
  (*data_ptr)++;
}

__global__ void at_increment(int *data_ptr)
{
  atomicAdd(data_ptr, 1);
}
 
int main(void)
{
  thrust::device_vector<int> data_ptr(1);
  data_ptr[0] = 0;
  increment<<<100,100>>>(thrust::raw_pointer_cast(&data_ptr[0]));
  //at_increment<<<100,100>>>(thrust::raw_pointer_cast(&data_ptr[0]));
  cudaDeviceSynchronize();
  std::cout<<"Actual "<<data_ptr[0]<<std::endl;
  std::cout<<"Expected "<<10*1000<<std::endl;

  return 0;
}
