//multiplication table

function printMultiplicationTable(n) {
	
  
	for (let j = 2; j <= n; j++) {
	  for (let i = 1; i <= 10; i++) {
		result = j * i;
		console.log(result);
	  }
	 
	}
  }
//   const n = 10;
  printMultiplicationTable(10);
