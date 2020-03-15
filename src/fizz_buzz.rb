# frozen_string_literal: true

class Numeric
  def multiple_of?(divisor)
    (self % divisor).zero?
  end
end

class FizzBuzz
  NUMBER_LIST_LENGTH = 100

  def generate
    number_list = []
    NUMBER_LIST_LENGTH.times do |position|
      number = position + 1

      insert = number.to_s

      if number.multiple_of? 3
        insert = 'Fizz'
      end
      if number.multiple_of? 5
        insert = 'Buzz'
      end
      if number.multiple_of? 15
        insert = 'FizzBuzz'
      end

      number_list.push insert
    end

    number_list

  end


end
