card_number = "4929735477250543"

valid = false
#reverse card number
def reverse_card(card_number)
    card_number.reverse
end
#split card number into array and integers
def split(card_number)
    card_number.split(//).map { |s| s.to_i }
end
# double the every second number of indexed array
#card_number gets indexed 0, 1, 2, 3 and the if the indexed number is odd we want the program to multiply it by 2, if not odd it just reprints the original number.
def double_second(card_number)
  card_number.map.with_index do |number, i|
    if i.odd?
      number * 2
    else
      number
    end
  end
end
# this method is summing the 2 digits of any number that is greater than 9 in the array. instead of adding the 2 digits, subtracting 9 does the same thing -- ie 13 -- 1+3 = 4 OR 13-9 = 4 so we are telling program to simply subtract 9 from the number if it's over 9, otherwise just print the number
def sum_large(card_number)
  card_number.map do |number|
    if number > 9
      number - 9
    else
      number
    end
  end
end
# this is summing the entire array. Still need to understand .inject and how this works
def sum_card(card_number)
  card_number.inject(0){|sum,x| sum + x}
end
# this part is calling each method into the original varaible of card_number so that the program does each method when we call card_number
card_number = reverse_card(card_number)
card_number = split(card_number)
card_number = double_second(card_number)
card_number = sum_large(card_number)
card_number = sum_card(card_number)
# Finally, this section says that if the card_number divided by ten returns 0 remainder, then the card is valid, but if it returns any remainder other than 0 it is NOT valid.
if card_number % 10 == 0
  puts "This is valid!"
else
  puts "This is not valid!"
end

# I believe this code will work for AMEX numbers as well. I did not code this program to be dependent on the number of card digits in a credit card, although writing this I'm now wondering if there are numbers that are not valid CC numbers because they are too short/long that would validate as valid... hmm
