#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define STR "#include <stdio.h>%c#include <stdlib.h>%c#include <string.h>%c#define STR %c%s%c%cint main() {%cint i = %i;%cif (i <= 0) exit (1); if (strcmp(__FILE__, %cSully.c%c)) i--;%cchar name[256];sprintf(name, %cSully_%%i.c%c, i);%cFILE *f = fopen(name, %cw%c);fprintf(f, STR, 10, 10, 10, 34, STR, 34, 10, 10, i, 10, 34, 34, 10, 34, 34, 10, 34, 34, 10, 34, 34);fclose(f);%csprintf(name, %cgcc Sully_%%i.c -o Sully_%%i; ./Sully_%%i%c, i, i, i);system(name);}"
int main() {
int i = 5;
if (i <= 0) exit (1); if (strcmp(__FILE__, "Sully.c")) i--;
char name[256];sprintf(name, "Sully_%i.c", i);
FILE *f = fopen(name, "w");fprintf(f, STR, 10, 10, 10, 34, STR, 34, 10, 10, i, 10, 34, 34, 10, 34, 34, 10, 34, 34, 10, 34, 34);fclose(f);
sprintf(name, "gcc Sully_%i.c -o Sully_%i; ./Sully_%i", i, i, i);system(name);}