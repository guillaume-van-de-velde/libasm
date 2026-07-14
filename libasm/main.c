#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <errno.h>
#include <stdlib.h>

typedef struct s_list
{
    void *data;
    struct s_list *next;
}   t_list;

size_t  ft_strlen(const char *s);
char    *ft_strcpy(char *dest, const char *src);
int     ft_strcmp(const char *s1, const char *s2);
ssize_t ft_write(int fd, const void *buf, size_t count);
ssize_t ft_read(int fd, void *buf, size_t count);
char    *ft_strdup(const char *s);
int     ft_atoi_base(char *str, char *base);
void    ft_list_push_front(t_list **begin_list, void *data);
int     ft_list_size(t_list *begin_list);
void    ft_list_sort(t_list **begin_list, int (*cmp)());
void    ft_list_remove_if(t_list **begin_list, void *data_ref, int (*cmp)(), void (*free_fct)(void *));

int main()
{
    //------------------ strlen ------------------

    // const char *str = "Hello";

    // printf("strlen        = %ld\n", strlen(str));
    // printf("ft_strlen     = %ld\n", ft_strlen(str));


    //------------------ strcpy ------------------

    // const char *str = "Hello";
    // char dest1[10] = {0};
    // char dest2[10] = {0};

    // printf("strcpy        = %p, %p, %p, %s\n", dest1, strcpy(dest1, str), dest1, dest1);
    // printf("ft_strcpy     = %p, %p, %p, %s\n", dest2, ft_strcpy(dest2, str), dest2, dest2);


    //------------------ strcmp ------------------

    // const char *s1 = "Hello1";
    // const char *s2 = "Hello1";

    // printf("strcmp        = %d\n", strcmp(s1, s2));
    // printf("ft_strcmp     = %d\n", ft_strcmp(s1, s2));


    //------------------ write -------------------

    // int fd = 1;
    // const void *buf = "Hello\n";
    // size_t count = 6;

    // ssize_t retWrite = write(fd, buf, count);
    // ssize_t retFtWrite = ft_write(fd, buf, count);
    // printf("write        = %ld errno : %d\n", retWrite, errno);
    // printf("ft_write     = %ld errno : %d\n", retFtWrite, errno);

    //------------------- read -------------------

    // int fd = 0;
    // char buf1[256] = {0};
    // char buf2[256] = {0};
    // size_t count = 6;

    // ssize_t retRead = read(fd, buf1, count);
    // ssize_t retFtRead = ft_read(fd, buf2, count);
    // printf("read        = %ld errno : %d buffer : %s\n", retRead, errno, buf1);
    // printf("ft_read     = %ld errno : %d buffer : %s\n", retFtRead, errno, buf2);

    //------------------ strdup ------------------

    // char *str = "Hello";
    // char *resDup = strdup(str);
    // char *resFtDup = ft_strdup(str);

    // printf("strdup        = %s address : %p\n", resDup, resDup);
    // printf("ft_strdup     = %s address : %p\n", resFtDup, resFtDup);

    // free(resDup);
    // free(resFtDup);

    //---------------- atoi_base -----------------

    // char *str = "-01000001";
    // char *base = "01";

    // printf("ft_atoi_base        = %d\n", ft_atoi_base(str, base));

    //-------------- list_push_front -------------

    // char *first = "first";
    // char *second = "second";
    // char *third = "third";

    // t_list *node3 = malloc(sizeof(t_list));
    // t_list *node2 = malloc(sizeof(t_list));
    // t_list *node1 = malloc(sizeof(t_list));

    // node3->data = (void *)third;
    // node3->next = NULL;
    // node2->data = (void *)second;
    // node2->next = node3;
    // node1->data = (void *)first;
    // node1->next = node2;

    // t_list *list = node1;
    
    // printf("before :\n");
    // while (list) {
    //     printf("%s\n", (char *)list->data);
    //     list = list->next;
    // }
    // printf("\n");

    // t_list **begin_list = &node1;
    // char *data = "zero";
    // ft_list_push_front(begin_list, (void *)data);

    // list = *begin_list;

    // printf("after :\n");
    // while (list) {
    //     printf("%s\n", (char *)list->data);
    //     list = list->next;
    // }

    // list = *begin_list;
    // t_list *tmp;
    // while (list) {
    //     tmp = list;
    //     list = list->next;
    //     free(tmp);
    // }

    //--------------- ft_list_size ---------------

    // char *first = "first";
    // char *second = "second";
    // char *third = "third";

    // t_list *node3 = malloc(sizeof(t_list));
    // t_list *node2 = malloc(sizeof(t_list));
    // t_list *node1 = malloc(sizeof(t_list));

    // node3->data = (void *)third;
    // node3->next = NULL;
    // node2->data = (void *)second;
    // node2->next = node3;
    // node1->data = (void *)first;
    // node1->next = node2;

    // printf("ft_list_size        = %d\n", ft_list_size(node1));

    // t_list *list = node1;
    // t_list *tmp;
    // while (list) {
    //     tmp = list;
    //     list = list->next;
    //     free(tmp);
    // }

    //--------------- ft_list_sort ---------------

    // char *first = "first";
    // char *second = "second";
    // char *third = "third";

    // t_list *node3 = malloc(sizeof(t_list));
    // t_list *node2 = malloc(sizeof(t_list));
    // t_list *node1 = malloc(sizeof(t_list));

    // node1->data = (void *)first;
    // node1->next = NULL;
    // node2->data = (void *)second;
    // node2->next = node1;
    // node3->data = (void *)third;
    // node3->next = node2; 

    // t_list *list = node3;
    
    // printf("before :\n");
    // while (list) {
    //     printf("%s\n", (char *)list->data);
    //     list = list->next;
    // }
    // printf("\n");

    // t_list **begin_list = &node3;

    // ft_list_sort(begin_list, ft_strcmp);

    // list = *begin_list;

    // printf("after :\n");
    // while (list) {
    //     printf("%s\n", (char *)list->data);
    //     list = list->next;
    // }

    // list = *begin_list;
    // t_list *tmp;
    // while (list) {
    //     tmp = list;
    //     list = list->next;
    //     free(tmp);
    // }

    //------------- ft_list_remove_if ------------

    // char *first = malloc(6);
    // char *second = malloc(7);
    // char *third = malloc(6);
    // strcpy(first, "first");
    // strcpy(second, "second");
    // strcpy(third, "third");

    // t_list *node3 = malloc(sizeof(t_list));
    // t_list *node2 = malloc(sizeof(t_list));
    // t_list *node1 = malloc(sizeof(t_list));

    // node3->data = (void *)third;
    // node3->next = NULL;
    // node2->data = (void *)second;
    // node2->next = node3;
    // node1->data = (void *)first;
    // node1->next = node2;

    // t_list *list = node1;

    // printf("before :\n");
    // while (list) {
    //     printf("%s\n", (char *)list->data);
    //     list = list->next;
    // }
    // printf("\n");

    // t_list **begin_list = &node1;
    // char *data = "second";
    // ft_list_remove_if(begin_list, (void *)data, ft_strcmp, free);

    // if (begin_list)
    //     list = *begin_list;
    // else
    //     list = NULL;

    // printf("after :\n");
    // while (list) {
    //     printf("%s\n", (char *)list->data);
    //     list = list->next;
    // }

    // if (begin_list)
    //     list = *begin_list;

    // t_list *tmp;
    // while (list) {
    //     tmp = list;
    //     list = list->next;
    //     free(tmp->data);
    //     free(tmp);
    // }
}