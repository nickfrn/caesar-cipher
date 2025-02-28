def caesar_cipher(string, key)
  string_array = string.split("")
  
  new_string = string_array.map do |char|
    # Check if char is alpha, else return it
    if char.match?(/[[:alpha:]]/) && char == char.upcase
      ((char.ord - "A".ord + key) % 26 + "A".ord).chr
    elsif char.match?(/[[:alpha:]]/) && char == char.downcase
      ((char.ord - "a".ord + key) % 26 + "a".ord).chr
    else
      char
    end
  end

  new_string.join("")
end

caesar_cipher("What a string!", 5)