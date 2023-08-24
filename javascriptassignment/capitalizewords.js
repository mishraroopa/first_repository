//capitalize words
 
 //write a function capitalizewords that takes a sentences as a parameter and return the sentence with the first letter of each word capitalizewords.
 
 function capitalizeWords(sentence) 
 {
	 sentence = sentence.split(" ");
 
	 for (var i = 0, x = sentence.length; i < x; i++) {
		 sentence[i] = sentence[i][0].toUpperCase() + sentence[i].substr(1);
	 }
 
	 return sentence.join(" ");
 }
 
 console.log(capitalizeWords("my name is roopa"));
		