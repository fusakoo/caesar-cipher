def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  alphabet_caps = ('A'..'Z').to_a
  output = []

  string.chars.each do |character|
    if alphabet.include?(character)
      index = alphabet.index(character)

      if (index + shift) >= alphabet.length
        shifted_character = (character.ord + shift - 26).chr
        
        output << shifted_character
      else
        shifted_character = (character.ord + shift).chr
        
        output << shifted_character
      end  
    elsif alphabet_caps.include?(character)
      index = alphabet_caps.index(character)

      if (index + shift) >= alphabet.length
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