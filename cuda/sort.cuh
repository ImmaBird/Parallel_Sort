#ifndef SORT
#define SORT

void mergeSort(int *array, int size);
__global__ void gpu_sort(int *d_array, int arraySize, int chunkSize);
__global__ void gpu_merge(int *d_array, int *d_temp_data, int arraySize, int chunkSize);
__device__ void insertionSort(int *array, int a, int b);
__host__ __device__ void printArray(int *d_array, int size);
int *getRandomArray(int size);
int randInt(int a, int b);
int comparator(const void *p, const void *q);
int compareArrays(int *array1, int *array2);

#endif
