/*
Andy Nguyen - COS217 A2
*/

#include "str.h"
#include <assert.h>

size_t Str_getLength(const char pcSrc[]) {
  size_t uLength = 0;
  assert(pcSrc != NULL);
  while (pcSrc[uLength] != '\0') uLength++;
  return uLength;
}

char *Str_copy(char dest[], const char src[]) {
  size_t i = 0;
  assert(dest != NULL && src != NULL);
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
  assert(s1 != NULL && s2 != NULL);
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
  assert(s1 != NULL && s2 != NULL);
  while (s1[i] != '\0' && s2[j] != '\0') {
    if (s1[i] > s2[j]) return 1;
    else if (s1[i] < s2[j]) return -1;
    i++;
    j++;
  }
  /* find size dif at this point */
  while (s1[i] != '\0') i++;
  while (s2[j] != '\0') j++;
  return i - j;
}

char *Str_search(const char haystack[], const char needle[]) {
  int i = 0;
  int j = 0;
  assert(haystack != NULL && needle != NULL);
  if (needle[0] == '\0') return (char *) haystack;
  while (haystack[i] != '\0') {
    /* check if we potentially see needle */
    if (haystack[i] == needle[0]) {
      j = 0;
      /* iterate through till we finished through needle or haystack */
      while (haystack[i + j] != '\0' && needle[j] != '\0' 
          && haystack[i + j] == needle[j]) {
        j++;
      }
      /* check if we finished needle */
      if (needle[j] == '\0') return (char *) &haystack[i];
    }
    i++;
  }
  return NULL;
}

 