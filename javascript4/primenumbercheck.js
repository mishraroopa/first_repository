//prime number check
// write a function isPrime that take an integer n as an parameter  and return true if n is a prime number  and false otherwise.

function isPrime(n)
 { 
	for (var x = 2; x< n ; x++){
         if(n% x === 0)
		{
			return  false;
		}
	}
return true;
 }console.log(isPrime(3));
 