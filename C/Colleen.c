#include <stdio.h>
void print(char* s) {printf(s, 10, 10, 10, 9, 10, 10, 34, s, 34, 10, 10, 9, 10, 10);}
/*
	Start
*/
int main(void) {char *s = "#include <stdio.h>%cvoid print(char* s) {printf(s, 10, 10, 10, 9, 10, 10, 34, s, 34, 10, 10, 9, 10, 10);}%c/*%c%cStart%c*/%cint main(void) {char *s = %c%s%c;%c/*%c%cCalling the function%c*/%cprint(s);}";
/*
	Calling the function
*/
print(s);}