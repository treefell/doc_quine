# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: chuang <chuang@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/03/14 17:34:15 by chuang            #+#    #+#              #
#    Updated: 2018/03/09 16:36:59 by chuang           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAMEC = Colleen
NAMEG = Grace
NAMES = Sully

CFLAGS = -Wall -Werror -Wextra -g

COLLEEN = Colleen.c

GRACE =	Grace.c
		
SULLY = Sully.c

OBJC = $(COLLEEN:.c=.o) 
OBJG = $(GRACE:.c=.o)
OBJS = $(SULLY:.c=.o)

RM = rm -f

all: $(NAMEC) $(NAMEG) $(NAMES) clean

$(NAMEC): $(OBJC)
	clang $(OBJC) -o $(NAMEC) -g

$(NAMEG): $(OBJG)
	clang $(OBJG) -o $(NAMEG) -g

$(NAMES): $(OBJS)
	clang $(OBJS) -o $(NAMES) -g

%.o:%.c
	clang -o $@ -c $< $(CFLAGS)

clean:
	$(RM) $(OBJC) $(OBJG) $(OBJS)

fclean: clean
	$(RM) $(NAMEC)
	$(RM) $(NAMEG)	
	$(RM) $(NAMES)

re: fclean all

.PHONY: all clean fclean re
