//palindrome

function Palindrome(n){
	let start = 0;
	let end = n.length-1;
	let result = true;
	while(end> start){

		if(n[start] != n[end]){
			result = false;
		}
		start++;
		end--;
	}
	return result;
}
let string = "roopa";
console.log(Palindrome(string));
