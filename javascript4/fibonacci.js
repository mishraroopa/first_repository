//fabonacii series

function generateFibonacci(n)
{
	let a= 0, b=1;
	console.log(a);
	console.log(b);

	let c;
	for(let i = 2; i<n ; i++)
	{
		c = a+b;
		console.log(c);

		a= b;
		b=c;
	}
	}
	generateFibonacci(10);
