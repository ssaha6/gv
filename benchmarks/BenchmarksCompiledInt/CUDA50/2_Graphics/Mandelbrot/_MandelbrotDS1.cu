//pass
//--gridDim=14 --blockDim=[32,32] --only-intra-group

#include "common_ds.h"

// The Mandelbrot secondary AA pass CUDA GPU thread function (double single version)
__global__ void MandelbrotDS1(uchar4 *dst, const int imageW, const int imageH, const int crunch,
                              const float xOff0, const float xOff1, const float yOff0, const float yOff1,
                              const float xJP, const float yJP, const float scale, const uchar4 colors,
                              const int frame, const int animationFrame, const int gridWidth, const int numBlocks, const bool isJ)
{
    __requires(imageW == 800);
    __requires(imageH == 600);
    __requires(gridWidth == 25);
    __requires(numBlocks == 475);

    __shared__ unsigned int blockIndex;
    __shared__ unsigned int blockX, blockY;

    // loop until all blocks completed
    while (1)
    {
#ifndef KERNEL_BUG
        __syncthreads();
#endif

        if ((threadIdx.x==0) && (threadIdx.y==0))
        {
            // get block to process
            blockIndex = atomicAdd(&blockCounter, 1);
            blockX = blockIndex % gridWidth;            // note: this is slow, but only called once per block here
            blockY = blockIndex / gridWidth;
        }

        __syncthreads();

        if (blockIndex >= numBlocks)
        {
            break;    // finish
        }

        // process this block
        const int ix = blockDim.x * blockX + threadIdx.x;
        const int iy = blockDim.y * blockY + threadIdx.y;

        if ((ix < imageW) && (iy < imageH))
        {
            // Get the current pixel color
            int pixel = imageW * iy + ix;
            uchar4 pixelColor = dst[pixel];
            int count = 0;

            // Search for pixels out of tolerance surrounding the current pixel
            if (ix > 0)
            {
                count += CheckColors(pixelColor, dst[pixel - 1]);
            }

            if (ix + 1 < imageW)
            {
                count += CheckColors(pixelColor, dst[pixel + 1]);
            }

            if (iy > 0)
            {
                count += CheckColors(pixelColor, dst[pixel - imageW]);
            }

            if (iy + 1 < imageH)
            {
                count += CheckColors(pixelColor, dst[pixel + imageW]);
            }

            if (count)
            {
                // Calculate the location
                float xPos0 = (float)ix * scale;
                float xPos1 = 0.0f;
                float yPos0 = (float)iy * scale;
                float yPos1 = 0.0f;
                dsadd(xPos0, xPos1, xPos0, xPos1, xOff0, xOff1);
                dsadd(yPos0, yPos1, yPos0, yPos1, yOff0, yOff1);

                // Calculate the Mandelbrot index for the current location
                int m = CalcMandelbrotDS(xPos0, xPos1, yPos0, yPos1, xJP, yJP, crunch, isJ);
                m = m > 0 ? crunch - m : 0;

                // Convert the Mandelbrot index into a color
                uchar4 color;

                if (m)
                {
                    m += animationFrame;
                    color.x = m * colors.x;
                    color.y = m * colors.y;
                    color.z = m * colors.z;
                }
                else
                {
                    color.x = 0;
                    color.y = 0;
                    color.z = 0;
                }

                // Output the pixel
                int frame1 = frame + 1;
                int frame2 = frame1 / 2;
                dst[pixel].x = (pixelColor.x * frame + color.x + frame2) / frame1;
                dst[pixel].y = (pixelColor.y * frame + color.y + frame2) / frame1;
                dst[pixel].z = (pixelColor.z * frame + color.z + frame2) / frame1;
            }
        }
    }

} // MandelbrotDS1
