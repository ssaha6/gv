//pass
//--blockDim=64 --gridDim=1 --no-inline

#include "cuda.h"


__global__ void foo(int* p) {

  int* q;

  q = p + 1;

  q[threadIdx.x] = 0;

}
