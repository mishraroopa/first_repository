//count character occurence
 
//Write a function countCharacterOccurrences that takes a string and a character as parameters and returns the number of times the character appears in the string.



function countCharacterOccurrences(str, char)
 {
	
	let count = 0;
	for(let i = 0; i<str.length; i++)
	{
		if(str.charAt(i)== char){
			count++;
		}
	}
 return count;

}

console.log(countCharacterOccurrences("roopa", "o"));

