# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chuang <chuang@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/04/13 19:37:28 by chuang            #+#    #+#              #
#    Updated: 2018/09/12 18:46:58 by chuang           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = $(COLLEEN) $(GRACE) $(SULLY)

COLLEEN = Colleen
GRACE = Grace
SULLY = Sully

CFLAGS += -Wall -Werror -Wextra

COLLEENSRC = Colleen.s

GRACESRC = Grace.s

SULLYSRC = Sully.s

CRT = /usr/lib/crt1.o

COLLEENOBJ = $(COLLEENSRC:.s=.o) 
GRACEOBJ = $(GRACESRC:.s=.o) 
SULLYOBJ = $(SULLYSRC:.s=.o)

OBJ = $(COLLEENOBJ) $(GRACEOBJ) $(SULLYOBJ)

RM = rm -f

%.o: %.s
	nasm -g --prefix _ -f macho64 $^ -o $@

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): $(COLLEENOBJ)
	ld $(COLLEEN).o -lc -o $(COLLEEN) $(CRT)
$(GRACE): $(GRACEOBJ)
	ld $(GRACE).o -lc -o $(GRACE)  $(CRT)
$(SULLY): $(SULLYOBJ)
	ld $(SULLY).o -lc -o $(SULLY) $(CRT)


clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME)

re: fclean all
