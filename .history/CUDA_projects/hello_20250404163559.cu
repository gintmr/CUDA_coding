#include <stdio.h>

__global__ void hello_from_gpu()
{
    printf("Hello from GPU!\n");
}

 
int main() 
{
    hello_from_gpu<<<2,1>>>();
    cudaDeviceSynchronize();
    printf("Jellyfish-mode\n");
    return 0;
}