def substrings(str, arr)
  str.split(/[^\w]/).reduce(Hash.new(0)) do |hash, word|
    arr.each { |sub_word| hash[sub_word] += 1 if word.match(/#{sub_word}/i) }
    hash
  end.sort_by(&:first).to_h
end

DICTIONARY = [
  "below","down","go","going","horn","how","howdy","it","i","low","own","part",
  "partner","sit"
]
