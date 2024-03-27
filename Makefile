# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: snegi <snegi@student.42berlin.de>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/18 13:36:07 by snegi             #+#    #+#              #
#    Updated: 2023/12/18 13:36:09 by snegi            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC	=	cc
CFLAGS	=	-Wall -Wextra -Werror -I .

SRCS	=	ft_printf.c ft_printf_util.c ft_printf_fun.c

OBJS	=	$(SRCS:.c=.o)

NAME	=	libftprintf.a

all:		$(NAME)

$(NAME):		$(OBJS)
			ar rcs $(NAME) $(OBJS)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

clean:
	rm -f $(OBJS)

fclean:		clean
			rm -f $(NAME)

re:	fclean all

.PHONY:	all clean fclean re
