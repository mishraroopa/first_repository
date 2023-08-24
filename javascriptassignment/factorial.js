//factorial

function calculateFactorial(n)
{
let f = 1;
for(n; n>=1; n--)
{
	f = f * n;
	console.log(f);
}
}
calculateFactorial(5);