#include<stdio.h>
int main(int argv, char*argc[]){

register int var1 = 10;
register int var2 = 20;
register int var3,var4,var5,var6,var8,var9,var10;
var3= var1 + var2;
var4 = var1 - var2;
var5 = var1 * var2;
var6= var1 /var2;
var8= var1 | var2;
var9= var1 & var2;
var10= var1 ^ var2;
return 0;
}
