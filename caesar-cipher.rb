def caesar_cipher(string, shift)
  #if (shift < 0)
  #  return caesar_cipher(string, shift + 26)
  #end

  cipher_ascii = string.chars.map { |character| character.ord }
  shifted_ascii = cipher_ascii.map { |character| character + shift}
  shifted_ascii.map { |character| character.chr }.join
end

p caesar_cipher("Hello world", 5)