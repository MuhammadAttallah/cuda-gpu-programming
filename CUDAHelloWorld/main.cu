#include <stdio.h> 
#include <cuda_runtime.h>

using namespace std;

__global__ void cuda_function()
{
    printf("Hello World from GPU!\n");
    __syncthreads();               // to synchronize all threads
}

int main()
{
    cuda_function <<<1, 1>>> ();  // <<<block, thread>>>
    cudaDeviceSynchronize();      // to synchronize device call
    return 0;
}