def caesar_cipher(string, shift_factor)
  shifted = []

  #create array of numbers corresponding to characters positions in the ASCII table
  ascii = string.downcase.chomp.chars.map {|char| char.ord}

  for i in ascii
    #if character is not in scope (a...z) should stay unchanged
    if i < 97 || i > 122
      shifted.push(i)
    #wrap from z to a
    elsif i + shift_factor > 122
      x = i + shift_factor
      y = x - 122
      z = 96 + y
      shifted.push(z)
    else
      shifted.push(i + shift_factor)
    end
  end

  encrypted_string = shifted.map { |x| x.chr}.join.capitalize
end


print(caesar_cipher("What a string!",5))
