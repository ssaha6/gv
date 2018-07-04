#ifndef NO_ANNOTATIONS_H
#define NO_ANNOTATIONS_H

#ifndef ANNOTATIONS_H
#error no_annotations.h must be included after annotations.h
#endif

#undef    __non_temporal_loads_begin
#undef    __non_temporal_loads_end
#undef    __invariant
#undef    __global_invariant
#undef    __function_wide_invariant
#undef    __candidate_invariant
#undef    __candidate_global_invariant
#ifndef ONLY_REQUIRES
#undef    __requires
#endif
#undef    __global_requires
#undef    __ensures
#undef    __global_ensures

#define __NOP ((void) 1)
#define  __non_temporal_loads_begin()     __NOP
#define  __non_temporal_loads_end()       __NOP
#define  __invariant(X)                   __NOP
#define  __global_invariant(X)            __NOP
#define  __function_wide_invariant(X)     __NOP
#define  __candidate_invariant(X)         __NOP
#define  __candidate_global_invariant(X)  __NOP
#ifndef ONLY_REQUIRES
#define  __requires(X)                    __NOP
#endif
#define  __global_requires(X)             __NOP
#define  __ensures(X)                     __NOP
#define  __global_ensures(X)              __NOP

#include "barrier_invariants_autogenerated_no_annotations.h"

#endif
