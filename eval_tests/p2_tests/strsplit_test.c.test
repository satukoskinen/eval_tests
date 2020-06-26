#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "../libft.h"

static void	ft_free_array(char **arr, int size)
{
	while (size > 0)
	{
		free(arr[size - 1]);
		size--;
	}
	free(arr);
}

static int  ft_array_size(char **arr)
{
    int size = 0;

    while (arr[size][0] != '\0')
        size++;
    size++;
    return (size);
}

int     strsplit_test(void)
{
    int tests_passed = 0;

    char **arr = ft_strsplit("*hello*fellow***students*", '*');
    if (ft_array_size(arr) == 4)
        tests_passed++;
    else
        printf("\nERROR 1: array size not 4\n%d", ft_array_size(arr));
    
    if (strcmp(arr[0], "hello") == 0 && strcmp(arr[1], "fellow") == 0 && strcmp(arr[2], "students") == 0 && strcmp(arr[3], "") == 0)
        tests_passed++;
    else
        printf("\nERROR 2 arr doesn't correspond to '*hello*fellow***students*'\n%s\n%s\n%s\n%s", arr[0], arr[1], arr[2], arr[3]);
    ft_free_array(arr, 4);

    arr = ft_strsplit("*hello*fellow***students*", ' ');
    if (strcmp(arr[0], "*hello*fellow***students*") == 0)
        tests_passed++;
    else
        printf("\nERROR 3: arr doesn't correspond to '*hello*fellow***students*'\n%s\n%s", arr[0], arr[1]);
    ft_free_array(arr, 2);

    arr = ft_strsplit("", ' ');
    if (strcmp(arr[0], "") == 0)
        tests_passed++;
    else
        printf("\nERROR 4: arr doesn't correspond to ''\n%s", arr[0]);
    ft_free_array(arr, 1);

    if (tests_passed == 4)
    {
        printf("\tOK \n");
        return (1);
    }
    return (0);
}