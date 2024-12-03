
---

# Substrings Method

This project implements a method `#substrings` that identifies and counts the occurrences of specified substrings within a given word.

## Description

The `#substrings` method takes two arguments:
1. A word (string).
2. An array of valid substrings (dictionary).

It returns a hash where each key is a substring found within the word, and the corresponding value is the count of how many times that substring appears. The search is case insensitive.

## Usage

### Method Definition

```ruby
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

```

### Example

```ruby
{"below"=>1, "low"=>1}
{"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>1, "going"=>1}
```

## Contributing

Contributions are welcome! Please fork the repository, create a new branch, and submit a pull request.

## License

This project is licensed under the MIT License.

---
