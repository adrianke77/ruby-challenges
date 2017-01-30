def prompt(*args)
  print(*args)
  gets.chomp
end

tries = 0
answer = rand(1..100)
guess = 0

until guess == answer
  tries += 1
  guess = prompt('Guess a number between 1 and 100 ').to_i
  puts case guess
       when (answer + 1)..100
         "The number is lower than #{guess}. Guess again"
       when 0..(answer - 1)
         "The number is higher than #{guess}. Guess again"
       else
         "You got it in #{tries} tries!"
       end
end
