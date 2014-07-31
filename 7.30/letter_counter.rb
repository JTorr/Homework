string = "strings"
hash = Hash.new

string.each_char do |c|
  hash.has_key?(c.to_sym) ? hash[c.to_sym] += 1 : hash[c.to_sym] = 1
end

puts hash
puts "There are #{hash.values_at(:t)} T's."
