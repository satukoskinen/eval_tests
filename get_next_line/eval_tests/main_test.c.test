#include "libft.h"
#include <fcntl.h>
#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>

int		main(int argc, char **argv)
{
	char	*line;
	int		ret, i, fd;
	int		fds[argc];

	ret = 1;
	fd = 0;
	i = 1;
	line = NULL;
	if (argc == 1)
	{
//		printf("Reading from stdin:\n");
		while (ret == 1)
		{
			ret = get_next_line(fd, &line);
//			printf("%d	", ret);
			if (line != NULL)
				printf("%s", line);
			if (ret == 1)
				printf("\n");
			free(line);
		}
//		printf("%d %s\n", ret, line);
	}	

	if (argc == 2)
	{
//		printf("Reading from argv[%d]:\n", i);
		fd = open(argv[i], O_RDONLY);
//		printf("fd %d\n", fd);
		while (ret == 1)
		{
			ret = get_next_line(fd, &line);
//			printf("%d	", ret);
			if (line != NULL)
				printf("%s", line);
			if (ret == 1)
				printf("\n");
			free(line);
		}
//		printf("%d %s\n", ret, line);
		close(fd);
	}

	if (argc > 2)
	{
		while (i < argc)
		{
			fds[i] = open(argv[i], O_RDONLY);
			printf("fds %d %d\n", i, fds[i]);
			i++;
		}
		while (ret == 1)
		{
			for (int i = 1; i < argc; i++)
			{
				ret = get_next_line(fds[i], &line);
				printf("argv[%d]: ret %d $%s$\n", i, ret, line);
				free(line);
			}
		}
		for (int i = 1; i < argc; i++)
			printf("argv[%d]: ret %d $%s$\n", i, ret, line);
	}
//	while (1)
//		;
	return (0);
}
