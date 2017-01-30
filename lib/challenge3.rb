def prompt(*args)
  print(*args)
  gets.chomp
end

choice = 'no'
until choice == 'yes'
  balance = 0 unless balance
  case prompt('What would you like to do? (deposit, withdraw, check_balance) ')
  when 'deposit'
    balance += prompt('How much would you like to deposit? ').to_i
  when 'withdraw'
    balance -= prompt('How much would you like to withdraw? ').to_i
  end
  puts 'Your current balance is '
  puts balance
  choice = prompt('Are you done? (yes,no) ')
end
puts('Thank you!')
