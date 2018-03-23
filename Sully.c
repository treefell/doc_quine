#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>
/*
** 1st comment
*/
int main(){int i = 5;if (i >-1)
{char* f_name;asprintf(&f_name,"Sully_%d.c",i);char* exe;asprintf(&exe, "./Sully_%d",i);char* cmd;asprintf(&cmd,"clang -Wall -Wextra -Werror -o %s %s",exe,f_name);
int fd=open(f_name,O_WRONLY|O_CREAT,0644);char*c="#include <stdio.h>%1$c#include <stdlib.h>%1$c#include <fcntl.h>%1$c#include <unistd.h>%1$c/*%1$c** 1st comment%1$c*/%1$cint main(){int i = %2$d;if (i>-1)%1$c{char* f_name;asprintf(&f_name,%3$cSully_%4$cd.c%3$c,i);char* exe;asprintf(&exe, %3$c./Sully_%4$cd%3$c,i);char* cmd;asprintf(&cmd,%3$cclang -Wall -Wextra -Werror -o %4$cs %4$cs%3$c,exe,f_name);%1$cint fd=open(f_name,O_WRONLY|O_CREAT,0644);char*c=%3$c%5$s%3$c;%1$cdprintf(fd,c,10,--i,34,37,c);close(fd);%1$csystem(cmd);if(i>-1){system(exe);}}%1$creturn 0;}%1$c";
dprintf(fd,c,10,--i,34,37,c);close(fd);
system(cmd);if(i>-1){system(exe);}}
return 0;}
