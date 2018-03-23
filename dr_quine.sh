#!/bin/sh

clang -Werror -Wextra -Wall -o Colleen Colleen.c
./Colleen > tmp_Colleen
diff tmp_Colleen Colleen.c
clang -Werror -Wextra -Wall -o Grace Grace.c
./Grace
diff Grace.c Grace_kid.c
clang -Werror -Wextra -Wall -o Sully Sully.c
