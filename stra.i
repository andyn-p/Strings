# 1 "stra.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "stra.c"




# 1 "str.h" 1




# 1 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 1 3 4
# 149 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4

# 149 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4
typedef long int ptrdiff_t;
# 216 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 328 "/usr/lib/gcc/aarch64-redhat-linux/8/include/stddef.h" 3 4
typedef unsigned int wchar_t;
# 6 "str.h" 2







# 12 "str.h"
size_t Str_getLength(const char pcSrc[]);




char *Str_copy(char *dest, const char *src);




char *Str_concat(char *s1, const char *s2);





int Str_compare(const char *s1, const char *s2);





char *Str_search(const char *haystack, const char *needle);
# 6 "stra.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 428 "/usr/include/features.h" 3 4
# 1 "/usr/include/sys/cdefs.h" 1 3 4
# 442 "/usr/include/sys/cdefs.h" 3 4
# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 443 "/usr/include/sys/cdefs.h" 2 3 4
# 1 "/usr/include/bits/long-double.h" 1 3 4
# 444 "/usr/include/sys/cdefs.h" 2 3 4
# 429 "/usr/include/features.h" 2 3 4
# 452 "/usr/include/features.h" 3 4
# 1 "/usr/include/gnu/stubs.h" 1 3 4




# 1 "/usr/include/bits/wordsize.h" 1 3 4
# 6 "/usr/include/gnu/stubs.h" 2 3 4


# 1 "/usr/include/gnu/stubs-lp64.h" 1 3 4
# 9 "/usr/include/gnu/stubs.h" 2 3 4
# 453 "/usr/include/features.h" 2 3 4
# 36 "/usr/include/assert.h" 2 3 4
# 64 "/usr/include/assert.h" 3 4




# 67 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 7 "stra.c" 2


# 8 "stra.c"
size_t Str_getLength(const char pcSrc[]) {
  size_t uLength = 0;
  
# 10 "stra.c" 3 4
 ((
# 10 "stra.c"
 pcSrc != 
# 10 "stra.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 10 "stra.c"
 "pcSrc != NULL"
# 10 "stra.c" 3 4
 , "stra.c", 10, __extension__ __PRETTY_FUNCTION__))
# 10 "stra.c"
                      ;
  while (pcSrc[uLength] != '\0') uLength++;
  return uLength;
}

char *Str_copy(char dest[], const char src[]) {
  size_t i = 0;
  
# 17 "stra.c" 3 4
 ((
# 17 "stra.c"
 dest != 
# 17 "stra.c" 3 4
 ((void *)0) 
# 17 "stra.c"
 && src != 
# 17 "stra.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 17 "stra.c"
 "dest != NULL && src != NULL"
# 17 "stra.c" 3 4
 , "stra.c", 17, __extension__ __PRETTY_FUNCTION__))
# 17 "stra.c"
                                    ;
  while (src[i] != '\0') {
    dest[i] = src[i];
    i++;
  }
  dest[i] = '\0';
  return dest;
}

char *Str_concat(char s1[], const char s2[]) {
  size_t i = 0;
  size_t s1len = Str_getLength(s1);
  
# 29 "stra.c" 3 4
 ((
# 29 "stra.c"
 s1 != 
# 29 "stra.c" 3 4
 ((void *)0) 
# 29 "stra.c"
 && s2 != 
# 29 "stra.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 29 "stra.c"
 "s1 != NULL && s2 != NULL"
# 29 "stra.c" 3 4
 , "stra.c", 29, __extension__ __PRETTY_FUNCTION__))
# 29 "stra.c"
                                 ;
  while (s2[i] != '\0') {
    s1[s1len + i] = s2[i];
    i++;
  }
  s1[s1len + i] = '\0';
  return s1;
}

int Str_compare(const char s1[], const char s2[]) {
  int i = 0;
  int j = 0;
  
# 41 "stra.c" 3 4
 ((
# 41 "stra.c"
 s1 != 
# 41 "stra.c" 3 4
 ((void *)0) 
# 41 "stra.c"
 && s2 != 
# 41 "stra.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 41 "stra.c"
 "s1 != NULL && s2 != NULL"
# 41 "stra.c" 3 4
 , "stra.c", 41, __extension__ __PRETTY_FUNCTION__))
# 41 "stra.c"
                                 ;
  while (s1[i] != '\0' && s2[j] != '\0') {
    if (s1[i] > s2[j]) return 1;
    else if (s1[i] < s2[j]) return -1;
    i++;
    j++;
  }

  while (s1[i] != '\0') i++;
  while (s2[j] != '\0') j++;
  return i - j;
}

char *Str_search(const char haystack[], const char needle[]) {
  int i = 0;
  int j = 0;
  
# 57 "stra.c" 3 4
 ((
# 57 "stra.c"
 haystack != 
# 57 "stra.c" 3 4
 ((void *)0) 
# 57 "stra.c"
 && needle != 
# 57 "stra.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 57 "stra.c"
 "haystack != NULL && needle != NULL"
# 57 "stra.c" 3 4
 , "stra.c", 57, __extension__ __PRETTY_FUNCTION__))
# 57 "stra.c"
                                           ;
  if (needle[0] == '\0') return (char *) haystack;
  while (haystack[i] != '\0') {

    if (haystack[i] == needle[0]) {
      j = 0;

      while (haystack[i + j] != '\0' && needle[j] != '\0'
          && haystack[i + j] == needle[j]) {
        j++;
      }

      if (needle[j] == '\0') return (char *) &haystack[i];
    }
    i++;
  }
  return 
# 73 "stra.c" 3 4
        ((void *)0)
# 73 "stra.c"
            ;
}
