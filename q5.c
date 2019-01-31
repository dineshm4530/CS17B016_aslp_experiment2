
int main(int argc, char const *argv[])
{

	int a[3][3];
	int b[3][3];
	int c[3][3];
	int i,j;
	for(i=1;i<=3;i++)
	{
		for(j=1;j<=3;j++)
		{
			a[i][j] =i;
			b[i][j] =i+j;
		}
	}
	for(i=1;i<=3;i++)
	{
		for(j=1;j<=3;j++)
		{
			c[i][j] = a[i][j] + b[i][j] ;
		}
	}
return 0;

}
