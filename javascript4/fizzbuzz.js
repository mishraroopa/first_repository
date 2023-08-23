//fizzbuzz
//Write a function fizzBuzz that takes a positive integer n as a parameter and printsnumbers from 1 to n. For multiples of 3, print "Fizz" instead of the number. For multiplesof 5, print "Buzz". For numbers that are multiples of both 3 and 5, print "FizzBuzz".



function fizzBuzz(n) {


    	for (let i = 1; i <= n; i++) {
    	  if (i % 3 == 0 && i % 5 == 0) {
    		console.log("FizzBuzz");
    	  } else if (i % 3 == 0) {
    		console.log("Fizz");
    	  } else if (i % 5 == 0) {
    		console.log("Buzz");
    	  } else {
    		console.log(i);
    	  }
    	}
      }
      const n = 15;
      fizzBuzz(n);