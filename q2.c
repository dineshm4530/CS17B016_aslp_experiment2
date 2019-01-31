#include<stdio.h>
int main(int argv, char*argc[])
{

 int a[6]={2,5,8,6,9,4};
int value2=2;
register int i;
for(i=1;i<=6;i++)
{
a[i] = a[i] + value2;
}
return 0;
}
