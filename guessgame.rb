

require '.\input_functions.'

def function_check (rno, guess)
  if (rno==guess)
    puts 'Bingo, You guessed the number correctly as ' + rno.to_s
  elsif (rno<=guess)
    puts "Your guessed number is bigger than "  + rno.to_s
    puts "please enter a smaller number next time ."
  else
    puts "Your guessed number is smaller than "  + rno.to_s
    puts "enter a bigger number next time."
  end
 return()
end


def main
begin
    rno = rand(100)
  begin
    guess = read_integer ("guess a number between {0-100}:")
    result= function_check(rno, guess)
  end until (rno == guess)
    continue = read_boolean('Would you like to continue with the game?')
end while (continue==true)
end

main
