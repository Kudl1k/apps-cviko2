//***************************************************************************
//
// Program for education in subject "Assembly Languages"
// petr.olivka@vsb.cz, Department of Computer Science, VSB-TUO
//
// Empty project
//
//***************************************************************************

#include <stdio.h>

long longArr[10] = {1,2,3,4,5,6,7,8,9,10};

void getEven();

int intArr[10] = {1,2,3,-4,5,-6,7,8,9,10};
char g_N = 1;



void bitDivision();

void stringxor();

char myString[] = "ahoj";
char g_xor = 'A';


int main()
{
    getEven();

    for (int i = 0; i < 10; i++)
    {
        printf("%ld ",longArr[i]);
    }

    printf("\n\n\n");
    
    bitDivision();

    for (int i = 0; i < 10; i++)
    {
        printf("%d ",intArr[i]);
    }

    stringxor();

    printf("\n\n%s\n",myString);

    stringxor();

    printf("%s\n\n\n",myString);
    

}
