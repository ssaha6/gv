//pass
//--blockDim=10 --gridDim=64 --no-inline

#include "cuda.h"


__global__ void foo() {

  __shared__ int A[10][10];
  
  A[threadIdx.y][threadIdx.x] = 2;

}
