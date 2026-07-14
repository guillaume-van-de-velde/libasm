SRCS = 	ft_strlen.s \
		ft_strcpy.s \
		ft_strcmp.s \
		ft_write.s \
		ft_read.s \
		ft_strdup.s \
		ft_atoi_base.s \
		ft_list_push_front.s \
		ft_list_size.s \
		ft_list_sort.s \
		ft_list_remove_if.s
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

.PHONY:	all clean fclean re