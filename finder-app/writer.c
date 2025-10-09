#include<stdio.h>
#include<syslog.h>
#include<string.h>
//Author: anandnitrate
int main(int argc, char *argv[])
{
	FILE *fd;
	openlog(NULL,0,LOG_USER);

	//argv[0]-own file name; argv[1]-first param; argv[2]-second param;
	if(argc != 3)
	{
		syslog(LOG_ERR, "Invalid number of arguments!");
	}

	fd = fopen(argv[1], "w");
	if(!fd)
	{
		syslog(LOG_ERR, "Unable to create or open the file");
		return 1;
	}

	fwrite(argv[2], strlen(argv[2]), 1, fd);

	fclose(fd);

	syslog(LOG_DEBUG,"Writing %s to %s",argv[2], argv[1]); 

	//printf("Argument count: %d\n", argc);
	//printf("Argument1: %s\n", argv[1]);
	//printf("Argument2: %s\n", argv[2]);

	return 0;
}
