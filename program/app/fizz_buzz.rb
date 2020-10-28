# frozen_string_literal: true

# 単純な REPL ならこれで十分
# $ ruby fizz_buzz.rb
# irb なら
# $ irb
# > load 'fizz_buzz.rb'
# > fizz(50)

def fizz(nnn)
  (1..nnn).each do |k|
    if (k % 15).zero?
      p 'FizzBuzz'
    elsif (k % 3).zero?
      p 'Fizz'
    elsif (k % 5).zero?
      p 'Buzz'
    else
      p k
    end
  end
end

# メイン関数としたもの
__FILE__ == $PROGRAM_NAME && fizz(50)
