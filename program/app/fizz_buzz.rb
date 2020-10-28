# frozen_string_literal: true

# 単純な REPL ならこれで十分
# $ bundle exec ruby fizz_buzz.rb
# irb なら
# $ bundle exec irb
# > load 'fizz_buzz.rb'
# > fizz(50)

require 'egison'

# comment
module Egi
  # Rubyのmoduleのメソッドは普通に定義しただけじゃ、関数として使えないので
  class << self
    include Egison
    def comb
      match_all([1, 2, 3, 4, 5]) do
        # x と y の隣を可変させている
        with(List.(*_, _x, *_, _y, *_)) { [x, y] }
      end
    end
  end
end

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
if __FILE__ == $PROGRAM_NAME
  fizz(50)
  p Egi.comb
end
