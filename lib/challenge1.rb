def prompt(*args)
  print(*args)
  gets.chomp
end

choice = prompt('What calculation would you like to do? (add,subt,mult,div) ')
first = prompt('What is number 1? ').to_f
second = prompt('What is number 2? ').to_f

answer =
  case choice
  when 'add'
    first + second
  when 'subt'
    first - second
  when 'mult'
    first * second
  when 'div'
    first / second
  else
    "uncertain, you didn't choose an operator i know"
  end

puts "Your result is #{answer}"
