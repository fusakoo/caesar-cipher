def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  alphabet_uppercase = ('A'..'Z').to_a
  output = []

  # convert given string into array and loop through each character
  string.chars.each do |character|
    if alphabet.include?(character)
      index = alphabet.index(character)
      
      # if inputted shift + starting index of character is greater than the length of a-z (26), wrap
      if (index + shift) >= alphabet.length
        shifted_character = (character.ord + shift - 26).chr
        output << shifted_character
      # otherwise, identify the ascii of character, apply shift, and push shifted character to output array
      else
        shifted_character = (character.ord + shift).chr
        output << shifted_character
      end  
    elsif alphabet_uppercase.include?(character)
      index = alphabet_uppercase.index(character)

      if (index + shift) >= alphabet_uppercase.length
        shifted_character = (character.ord + shift - 26).chr
        output << shifted_character
      else  
        shifted_character = (character.ord + shift).chr
        output << shifted_character
      end
    else
      output << character
    end
  end

  p output.join
end

caesar_cipher("Test!?", 5)
caesar_cipher("What a string!", 5)