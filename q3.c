
int main(int argv, char*argc[])
{
   int i, n=1;
   while(n<=100)
  {
	int p=0;
	for(i=2;i=n/2;i++)
      {
        if(n%i==0)
        {
	p++;
	break;
        }
      }
      if(p==0 && n!=0)
	{
	printf("%d",n);
	}
    }
  n++;
return 0;
}







