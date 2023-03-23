#Implement a method #substrings that takes a word as the first argument
#and then an array of valid substrings (your dictionary) as the second argument.
#It should return a hash listing each substring (case insensitive)
#that was found in the original string and how many times it was found.

def substrings (text, dictionary)
  result = {}

  dictionary.each do |word|
    count = text.downcase.scan(word).size
    result[word] = count unless count == 0
  end
  result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
text = "Howdy partner, sit down! How's it going?"

puts substrings(text, dictionary)
