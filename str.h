/*
Andy Nguyen - COS217 A2
*/

#include <stddef.h>
#ifndef str
#define str

/*
Return the length of string pcSrc. 
*/
size_t Str_getLength(const char pcSrc[]);

/*
Returns a copy of src and places into the memory location of dest.
*/
char *Str_copy(char *dest, const char *src);

/*
Returns a string of s1 with s2 concatenated behind s1.
*/
char *Str_concat(char *s1, const char *s2);

/* 
Returns a value relative to 0 based on if s1 is less than, equal to
or greater than s2. 
*/
int Str_compare(const char *s1, const char *s2);

/* 
Returns a pointer to first occurence of needle substr in the haystack
main str.
*/
char *Str_search(const char *haystack, const char *needle);

#endif