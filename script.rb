def substrings(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, substring|
    repetitions = string.downcase.scan(substring.downcase).length
    hash[substring] += repetitions if repetitions > 0 
    hash
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)