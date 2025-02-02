def substrings(str, arr)
  raise ArgumentError unless str.is_a?(String) && arr.is_a?(Array)
  str.split(/[^\w]/).reduce(Hash.new(0)) do |hash, word|
    arr.each { |sub_word| hash[sub_word] += 1 if word.match(/#{sub_word}/i) }
    hash
  end.sort_by(&:first).to_h
end
