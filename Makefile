# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: dmilan <dmilan@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/28 11:34:55 by dmilan            #+#    #+#              #
#    Updated: 2020/11/13 12:23:47 by dmilan           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME      = libft.a
HEADER    = libft.h
CCFLAGS   = -c -Wall -Wextra -Werror
SRC       = $(wildcard ft_*.c)
OBJ       = $(SRC:.c=.o)

.PHONY: all clean fclean re

all: $(NAME)

%.o: %.c $(HEADER)
	gcc $(CCFLAGS) $<

$(NAME): $(OBJ) 
	ar -rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -f $(OBJ) $(OBJ_BONUS)

fclean: clean
	rm -f $(NAME)

re: fclean all