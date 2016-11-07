#include<stdio.h>
#include<stdlib.h>
int main(int argc, char *argv[]) {
    char a_buf[256], b_buf[256];
    FILE *fp;

    if ((fp = fopen("./tmp", "w+")) == NULL) { //
        perror("fopen");
        exit(EXIT_FAILURE);
    }

    printf("input a string(<256):\n");      //
    scanf("%s", a_buf);             //
    fprintf(fp, "%s", a_buf);           //
    rewind(fp);                 //
    fscanf(fp, "%s", b_buf);            //
    printf("%s\n", b_buf);              //
    fclose(fp);
    return 0;
}

/*Notes:
 * scanf() takes the string from STDOUT and stores it in a buffer
 * fprintf() writes the buffer contents into a file stream
 * while writing, the file position keeps moving.
 * To read from beginning, use rewind()
 * Read from the file stream onto a buffer using fscanf()
 * printf writes the buffer to STDOUT until the first space
 */