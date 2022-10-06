# 1 "strp.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "strp.c"




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
# 6 "strp.c" 2
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



# 7 "strp.c" 2


# 8 "strp.c"
size_t Str_getLength(const char *pcSrc) {
  const char *pcEnd;
  
# 10 "strp.c" 3 4
 ((
# 10 "strp.c"
 pcSrc != 
# 10 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 10 "strp.c"
 "pcSrc != NULL"
# 10 "strp.c" 3 4
 , "strp.c", 10, __extension__ __PRETTY_FUNCTION__))
# 10 "strp.c"
                      ;
  pcEnd = pcSrc;
  while (*pcEnd != '\0')
    pcEnd++;
  return (size_t)(pcEnd - pcSrc);
}

char *Str_copy(char *dest, const char *src) {
  char *desti = dest;
  
# 19 "strp.c" 3 4
 ((
# 19 "strp.c"
 dest != 
# 19 "strp.c" 3 4
 ((void *)0) 
# 19 "strp.c"
 && src != 
# 19 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 19 "strp.c"
 "dest != NULL && src != NULL"
# 19 "strp.c" 3 4
 , "strp.c", 19, __extension__ __PRETTY_FUNCTION__))
# 19 "strp.c"
                                    ;
  while (*src != '\0') {
    *desti = *src;
    src++;
    desti++;
  }
  *desti = '\0';
  return dest;
}

char *Str_concat(char *s1, const char *s2) {
  char *s1c = s1;
  
# 31 "strp.c" 3 4
 ((
# 31 "strp.c"
 s1 != 
# 31 "strp.c" 3 4
 ((void *)0) 
# 31 "strp.c"
 && s2 != 
# 31 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 31 "strp.c"
 "s1 != NULL && s2 != NULL"
# 31 "strp.c" 3 4
 , "strp.c", 31, __extension__ __PRETTY_FUNCTION__))
# 31 "strp.c"
                                 ;

  while (*s1c != '\0') s1c++;
  while (*s2 != '\0') {
    *s1c = *s2;
    s1c++;
    s2++;
  }
  *s1c = '\0';
  return s1;
}

int Str_compare(const char *s1, const char *s2) {
  int dif = 0;
  
# 45 "strp.c" 3 4
 ((
# 45 "strp.c"
 s1 != 
# 45 "strp.c" 3 4
 ((void *)0) 
# 45 "strp.c"
 && s2 != 
# 45 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 45 "strp.c"
 "s1 != NULL && s2 != NULL"
# 45 "strp.c" 3 4
 , "strp.c", 45, __extension__ __PRETTY_FUNCTION__))
# 45 "strp.c"
                                 ;
  while (*s1 != '\0' && *s2 != '\0') {
    if (*s1 > *s2) return 1;
    else if (*s1 < *s2) return -1;
    s1++;
    s2++;
  }

  while (*s1 != '\0') {
    s1++;
    dif++;
  }
  while (*s2 != '\0') {
    s2++;
    dif--;
  }
  return dif;
}

char *Str_search(const char *haystack, const char *needle) {
  char *hayPtr = 
# 65 "strp.c" 3 4
                ((void *)0)
# 65 "strp.c"
                    ;
  char *needlePtr = (char *) needle;
  
# 67 "strp.c" 3 4
 ((
# 67 "strp.c"
 haystack != 
# 67 "strp.c" 3 4
 ((void *)0) 
# 67 "strp.c"
 && needle != 
# 67 "strp.c" 3 4
 ((void *)0)) ? (void) (0) : __assert_fail (
# 67 "strp.c"
 "haystack != NULL && needle != NULL"
# 67 "strp.c" 3 4
 , "strp.c", 67, __extension__ __PRETTY_FUNCTION__))
# 67 "strp.c"
                                           ;
  if (*needle == '\0') return (char *) haystack;
  while (*haystack != '\0') {

    if (*haystack == *needle) {

      hayPtr = (char *) haystack;
      needlePtr = (char *) needle;

      while (*hayPtr != '\0' && *needlePtr != '\0'
          && *hayPtr == *needlePtr) {
        hayPtr++;
        needlePtr++;
      }

      if (*needlePtr == '\0') return (char *) haystack;
    }
    haystack++;
  }
  return 
# 86 "strp.c" 3 4
        ((void *)0)
# 86 "strp.c"
            ;
}
