['A', 'B', 'C'].each do |letter|
  puts letter
end # do this for multi-line

# =

['A', 'B', 'C'].each { |letter|
  puts letter
} # don't do this

['A', 'B', 'C'].each { |letter| puts letter} # do this for single line

options = ['Create Contact', 'Delete Contact', 'View Contacts', 'Exit']

options.each_with_index do |option, i|
  puts "#{i + 1}) #{option}"
end
