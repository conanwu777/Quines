#include <stdio.h>
#define STR "#include <stdio.h>%c#define STR %c%s%c%c#define GRACE_KID FILE *f = fopen(%cGrace_kid.c%c, %cw%c)%c#define FT int main(){GRACE_KID;fprintf(f, STR, 10, 34, STR, 34, 10, 34, 34, 34, 34, 10, 10, 10, 10, 9, 10);}%cFT%c/*%c%cCHILD PRODUCED~%c*/"
#define GRACE_KID FILE *f = fopen("Grace_kid.c", "w")
#define FT int main(){GRACE_KID;fprintf(f, STR, 10, 34, STR, 34, 10, 34, 34, 34, 34, 10, 10, 10, 10, 9, 10);}
FT
/*
	CHILD PRODUCED~
*/