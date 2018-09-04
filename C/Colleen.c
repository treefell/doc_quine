#include <stdio.h>
/*
**1st comment
*/
int test(){return 1;}
int main(){
/*
**2nd comment
*/
test();char*c="#include <stdio.h>%c/*%c**1st comment%c*/%cint test(){return 1;}%cint main(){%c/*%c**2nd comment%c*/%ctest();char*c=%c%s%c;printf(c,10,10,10,10,10,10,10,10,10,34,c,34,10);return 0;}%c";printf(c,10,10,10,10,10,10,10,10,10,34,c,34,10);return 0;}
