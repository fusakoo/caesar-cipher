def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  alphabet_caps = ('A'..'Z').to_a
  output = []
  string.chars.each do |character|
    if alphabet.include?(character)
      shifted = character.ord + shift
      shifted_character = shifted.chr
      
      output << shifted_character
    elsif alphabet_caps.include?(character)  
      shifted = character.ord + shift
      shifted_character = shifted.chr
      
      output << shifted_character
    else
      output << character
    end
  end

  output.join
end

p caesar_cipher("Test!", 5)