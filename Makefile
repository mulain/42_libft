# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: wmardin <wmardin@student.42wolfsburg.de    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/26 13:39:51 by wmardin           #+#    #+#              #
#    Updated: 2022/05/31 15:15:57 by wmardin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = gcc
CFLAGS = -Wall -Wextra -Werror -Iinclude
AR = ar rcs

NAME = libft.a

PATH_ft_is = src/ft_is/
PATH_ft_list = src/ft_list/
PATH_ft_mem = src/ft_mem/
PATH_ft_put = src/ft_put/
PATH_ft_string = src/ft_string/
PATH_ft_gnl = src/ft_gnl/
PATH_ft_printf = src/ft_printf

SRC =	$(PATH_ft_is)ft_isalnum.c\
		$(PATH_ft_is)ft_isalpha.c\
		$(PATH_ft_is)ft_isascii.c\
		$(PATH_ft_is)ft_isdigit.c\
		$(PATH_ft_is)ft_isprint.c\
		$(PATH_ft_list)ft_lstadd_back.c\
		$(PATH_ft_list)ft_lstadd_front.c\
		$(PATH_ft_list)ft_lstclear.c\
		$(PATH_ft_list)ft_lstdelone.c\
		$(PATH_ft_list)ft_lstiter.c\
		$(PATH_ft_list)ft_lstlast.c\
		$(PATH_ft_list)ft_lstmap.c\
		$(PATH_ft_list)ft_lstnew.c\
		$(PATH_ft_list)ft_lstsize.c\
		$(PATH_ft_mem)ft_bzero.c\
		$(PATH_ft_mem)ft_calloc.c\
		$(PATH_ft_mem)ft_memchr.c\
		$(PATH_ft_mem)ft_memcmp.c\
		$(PATH_ft_mem)ft_memcpy.c\
		$(PATH_ft_mem)ft_memmove.c\
		$(PATH_ft_mem)ft_memset.c\
		$(PATH_ft_put)ft_putchar_fd.c\
		$(PATH_ft_put)ft_putendl_fd.c\
		$(PATH_ft_put)ft_putnbr_fd.c\
		$(PATH_ft_put)ft_putstr_fd.c\
		$(PATH_ft_string)ft_atoi.c\
		$(PATH_ft_string)ft_itoa.c\
		$(PATH_ft_string)ft_split.c\
		$(PATH_ft_string)ft_strchr.c\
		$(PATH_ft_string)ft_strdup.c\
		$(PATH_ft_string)ft_striteri.c\
		$(PATH_ft_string)ft_strjoin.c\
		$(PATH_ft_string)ft_strlcat.c\
		$(PATH_ft_string)ft_strlcpy.c\
		$(PATH_ft_string)ft_strlen.c\
		$(PATH_ft_string)ft_strmapi.c\
		$(PATH_ft_string)ft_strncmp.c\
		$(PATH_ft_string)ft_strnstr.c\
		$(PATH_ft_string)ft_strrchr.c\
		$(PATH_ft_string)ft_strtrim.c\
		$(PATH_ft_string)ft_substr.c\
		$(PATH_ft_string)ft_tolower.c\
		$(PATH_ft_string)ft_toupper.c\
		$(PATH_ft_gnl)get_next_line.c\
		$(PATH_ft_gnl)get_next_line_utils.c\

DIR_BACKUP = /mnt/e/42/Projects/Backup/libft_v03_subfolders

DIR_OBJ = obj/
OBJ = $(SRC:.c=.o)

#OBJ = $(SRC:.c=.o)
#$(NAME): $(OBJ)
#		$(CC) $(CFLAGS) $^ -o $@ 



$(NAME): $(OBJ)
	$(AR) $(NAME) $(OBJ)

#$(DIR_OBJ)/$(OBJ)%.o: %.c
#	$(CC) $(CFLAGS) $(CPPFLAGS) -c $@
#$($<:src/=obj/)


#$(DIR_OBJ)$(OBJ):
#	$(CC) $(CFLAGS) -c -o $(SRC)
##$^ -o $@
## the value of ‘$^’ is a list of all the prerequisites of the rule, including the names of the directories in which they were found
## this will include VPATH found directories
## and the value of ‘$@’ is the target

all: $(NAME)

clean:
	$(RM) $(OBJ)
	
fclean: clean
	$(RM) $(NAME) a.out

re: fclean all

test:
	$(CC) $(CFLAGS) $(SRC)
	./a.out

testnoflag:
	$(CC) $(SRC)
	./a.out

save:
	mkdir -p $(DIR_BACKUP)
	cp *.c libft.h Makefile $(DIR_BACKUP)