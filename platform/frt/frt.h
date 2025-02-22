// frt.h
/*
  FRT - A Godot platform targeting single board computers
  Copyright (c) 2017-2023  Emanuele Fornara
  SPDX-License-Identifier: MIT
 */

#if __cplusplus >= 201103L
#define FRT_OVERRIDE override
#else
#define FRT_OVERRIDE
#endif

namespace frt {

void warn(const char *format, ...)
#ifdef __GNUC__
__attribute__((format(printf, 1, 2)))
#endif
;

#if __cplusplus >= 201103L
[[ noreturn ]]
#endif
void fatal(const char *format, ...)
#ifdef __GNUC__
__attribute__((format(printf, 1, 2)))
#endif
;

} // namespace frt
