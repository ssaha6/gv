//PASS
//--local_size=[32] --num_groups=[16]

#pragma OPENCL EXTENSION cl_khr_fp64 : enable

__kernel void kernel0(__global double *data, __global double *mean, int m, int n)
{
  __requires(m == 512);
  __requires(n == 1024);
    long b0 = get_group_id(0);
    long t0 = get_local_id(0);
    double private_mean[1];

    #define floord(n,d) (((n)<0) ? -((-(n)+(d)-1)/(d)) : (n)/(d))
    #define min(x,y)    ((x) < (y) ? (x) : (y))
    {
      __requires(((((m) >= (1)) & ((m) <= (2147483647))) & ((n) <= (2147483647))) & ((n) >= (-2147483648)));
      for (long c0 = 32 * b0; c0 < m; c0 += 1048576) {
        if (m >= t0 + c0 + 1) {
          // shared
          {
            private_mean[0] = 0.;
            for (long c3 = 0; c3 <= min(31, n - 1); c3 += 1)
              private_mean[0] += data[c3 * m + (t0 + c0)];
          }
          for (long c1 = 32; c1 < n; c1 += 32) {
            // shared
            for (long c3 = 0; c3 <= min(31, n - c1 - 1); c3 += 1)
              private_mean[0] += data[(c1 + c3) * m + (t0 + c0)];
          }
          mean[t0 + c0] = private_mean[0];
        }
        barrier(CLK_LOCAL_MEM_FENCE | CLK_GLOBAL_MEM_FENCE);
      }
      __function_wide_invariant(__write_implies(mean, (((((((32) * (b0)) + (t0)) >= (0)) & ((((32) * (b0)) + (t0)) <= (1048575))) & ((m) >= ((((__write_offset_bytes(mean)) / (sizeof(double))) % (m)) + (1)))) & ((((__write_offset_bytes(mean)) / (sizeof(double))) % (m)) >= (0))) & ((((((32) * (b0)) + (t0)) - (((__write_offset_bytes(mean)) / (sizeof(double))) % (m))) % (1048576)) == (0))));
      __function_wide_invariant(__read_implies(mean, ((((((n) >= (1)) & ((((32) * (b0)) + (t0)) >= (0))) & ((((32) * (b0)) + (t0)) <= (1048575))) & ((m) >= ((((__read_offset_bytes(mean)) / (sizeof(double))) % (m)) + (1)))) & ((((__read_offset_bytes(mean)) / (sizeof(double))) % (m)) >= (0))) & ((((((32) * (b0)) + (t0)) - (((__read_offset_bytes(mean)) / (sizeof(double))) % (m))) % (1048576)) == (0))));
      __function_wide_invariant(__read_implies(data, (((((((((32) * (b0)) + (t0)) >= (0)) & ((((32) * (b0)) + (t0)) <= (1048575))) & ((n) >= (((((__read_offset_bytes(data)) / (sizeof(double))) / (m)) % (n)) + (1)))) & (((((__read_offset_bytes(data)) / (sizeof(double))) / (m)) % (n)) >= (0))) & ((m) >= ((((__read_offset_bytes(data)) / (sizeof(double))) % (m)) + (1)))) & ((((__read_offset_bytes(data)) / (sizeof(double))) % (m)) >= (0))) & ((((((32) * (b0)) + (t0)) - (((__read_offset_bytes(data)) / (sizeof(double))) % (m))) % (1048576)) == (0))));
    }
}
