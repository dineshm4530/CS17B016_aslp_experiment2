#include<stdio.h>

int isPrime(int n)
{
	int i;
	int p=0;
	for(i=2;i<n/2;i++)
	{
		if(n%i==0)
			p=1;
	}
	if(p==1)
	{
		p=0;
		return 0;
	}
	else
		return 1;
}
int main()
{
	int x=4;
	int y=x;
	int z=x;
	int k;
	
	switch(k)
	{
		case 1:
		{
			if(x%2==0) 
			{
			x++;
			break;
			}
		}
		case 2:
		{
			if(x%2==1)
			{
			while(isPrime(y)==0)
			{
				y++;
			}
			break;
		    }
		}
		case 3:
		{
			if(isPrime(x))
			{
			if(z%2==0)
				z++;
			else
				z=z+2;
			}
		}
	}
	return 0;
}	
