//string
//write a function reverseString that take a string as a parameter and return the reverse of the input string .


function reverseString(string)
{      
	var newStr = " ";
	for(var i = string.length-1; i>=0; i--)
		{
            newStr+= string[i];
		}
	console.log(newStr);
		

}
reverseString('roopa');