/*
Andy Nguyen - COS217 A2
*/

#include "str.h"
#include <assert.h>

size_t Str_getLength(const char *pcSrc) {
  const char *pcEnd;
  assert(pcSrc != NULL);
  pcEnd = pcSrc;
  while (*pcEnd != '\0')
    pcEnd++;
  return (size_t)(pcEnd - pcSrc);
}

char *Str_copy(char *dest, const char *src) {
  char *desti = dest;
  assert(dest != NULL && src != NULL);
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
  assert(s1 != NULL && s2 != NULL);
  /* move s1 to the end */
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
  assert(s1 != NULL && s2 != NULL);
  while (*s1 != '\0' && *s2 != '\0') {
    if (*s1 > *s2) return 1;
    else if (*s1 < *s2) return -1;
    s1++;
    s2++;
  }
  /* find size dif at this point */
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
  char *hayPtr = NULL;
  char *needlePtr = (char *) needle;
  assert(haystack != NULL && needle != NULL);
  if (*needle == '\0') return (char *) haystack;
  while (*haystack != '\0') {
    /* spotted potential needle */
    if (*haystack == *needle) {
      /* set the haytack pointer if so */
      hayPtr = (char *) haystack;
      needlePtr = (char *) needle;
      /* iterate through till we finished through needle or haystack */
      while (*hayPtr != '\0' && *needlePtr != '\0' 
          && *hayPtr == *needlePtr) {
        hayPtr++;
        needlePtr++;
      }
      /* check if we finished needle */
      if (*needlePtr == '\0') return (char *) haystack;
    }
    haystack++;
  }
  return NULL;
}