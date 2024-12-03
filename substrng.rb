def substrings(word, dictionary)
  # Initialized an empty hash to store results
  result = Hash.new(0)

  word.downcase.split.each do |w|
    # Check each dictionary word to see if it is a substring
    dictionary.each do |dictionary_word|
      if w.include?(dictionary_word)
        result[dictionary_word] += 1
      end
    end
  end

  result
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

puts substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "partner" => 1, "sit" => 1 }
