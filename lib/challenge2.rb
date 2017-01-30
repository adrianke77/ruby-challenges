def prompt(*args)
  print(*args)
  gets.chomp
end

string = prompt('Enter a string: ')

(string.length / 2).floor.times do |x|
  string[x], string[string.length - x - 1] =
    string[string.length - x - 1], string[x]
end

puts(string)
