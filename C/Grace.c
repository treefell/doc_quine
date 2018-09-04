#include <stdio.h>
/*
	comm
*/
#define WAZA
#define NAME "Grace_kid.c"
#define POOP(x) int main(){char *c="#include <stdio.h>%c/*%c	comm%c*/%c#define WAZA%c#define NAME %cGrace_kid.c%c%c#define POOP(x) int main(){char *c=%c%s%c;FILE*fd=fopen(NAME,%cw%c);if (fd) fprintf(fd,c,10,10,10,10,10,34,34,10,34,c,34,34,34,10,10,10);}%cPOOP(1)%c";FILE*fd=fopen(NAME,"w");if (fd) fprintf(fd,c,10,10,10,10,10,34,34,10,34,c,34,34,34,10,10,10);}
POOP(1)
