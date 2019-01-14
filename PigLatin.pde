String counter;
public void setup() 
{
	String[] lines = loadStrings("words.txt");
	System.out.println("there are " + lines.length + " lines");
	for (int i = 0 ; i < lines.length; i++) 
	{
	  System.out.println(pigLatin(lines[i]));
	}
}

public int findFirstVowel(String word)
//precondition: sWord is a valid String of length greater than 0.
//postcondition: returns the position of the first vowel in sWord.  If there are no vowels, returns -1
{
	  int counter = -1;
  for(int i = 0; i < word.length(); i++){
    if(word.substring(i, i + 1).equals("a") || word.substring(i, i + 1).equals("e") || word.substring(i, i + 1).equals("i") || word.substring(i, i + 1).equals("o") || word.substring(i, i + 1).equals("u")){
      counter = i;
      break;
    }
  }
  return counter;
}

public String pigLatin(String sWord)
//precondition: sWord is a valid String of length greater than 0
//postcondition: returns the pig latin equivalent of sWord
{

	if(findFirstVowel(sWord) == -1){
		counter = sWord + "ay";
	}else if(findFirstVowel(sWord) == 0){
		counter = sWord + "way";
	}else if(sWord.length() > 1 && sWord.substring(0, 2).equals("qu")){
			counter = sWord.substring(2, sWord.length()) + "qu" + "ay";

	}else if(sWord.length() > 1 &&findFirstVowel(sWord) > 0){
		counter = sWord.substring(findFirstVowel(sWord), sWord.length()) + sWord.substring(0, findFirstVowel(sWord)) + "ay";
	}

	return counter;
}
