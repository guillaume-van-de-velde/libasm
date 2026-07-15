SRCS = 	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s \
		ft_read.s \
		ft_strdup.s \
		ft_atoi_base_bonus.s \
		ft_list_push_front_bonus.s \
		ft_list_size_bonus.s \
		ft_list_sort_bonus.s \
		ft_list_remove_if_bonus.s
OBJS = ${SRCS:.s=.o}
NAME = libasm.a
LIBS = ar rcs
SC = nasm
RM 	= rm -f
SFLAGS = -f elf64
MAINOBJ = cc -c main.c -o main.o
MAIN = cc main.o libasm.a -o main

.s.o:
	 ${SC} ${SFLAGS} $< -o ${<:.s=.o}

${NAME}: ${OBJS}
	 ${LIBS} ${NAME} ${OBJS}
	 #${MAINOBJ}
	 #${MAIN}

all: ${NAME}

clean:
	 ${RM} ${OBJS}

fclean: clean
	${RM} ${NAME}

re: fclean all

bonus: all

.PHONY:	all clean fclean re