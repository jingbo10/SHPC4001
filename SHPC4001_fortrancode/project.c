#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void)
{
	FILE * fp;
    char * line = NULL;
    size_t len = 0;
    ssize_t read;
	int fullsizearray[20][3];
	int count = 0;
	int count2 = 0;
    fp = fopen("test.txt", "r");
    if (fp == NULL)
        exit(EXIT_FAILURE);

    while ((read = getline(&line, &len, fp)) != -1) {
		int temparray[3];

		char * pch;
		pch = strtok (line," ,.-");
		count = 0;
		while (pch != NULL)
		{

			temparray[count] = atoi(pch);
			//printf ("%s\n",pch);
			pch = strtok (NULL, " ,.-");
			count += 1;
		}
		for(int i=0; i <= 2; i++){
				//printf( "%d\n", temparray[i]);
		}
		for(int i=0; i <= 2; i++){
			fullsizearray[count2][i] = temparray[i];
		}
		count2 += 1;

    }
	for(int i = 0; i < 3; i++) {
		for(int j = 0; j < count2; j++) {
			printf("%d ", fullsizearray[i][j]);
		}
		printf("\n");
	}
    fclose(fp);
    if (line)
        free(line);
    exit(EXIT_SUCCESS);

	/** int time = 0;
	int process;

	for(time < 30; time++;){
		if time == fullsizearray[][][]
	} **/


	return 0;
}
