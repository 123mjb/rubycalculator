# frozen_string_literal: true

class Equation
  @startEquation
  @endEquation

  def initialize(equation:String)
    encapsulation = 0
    (0..equation.length).each do |i|
      if equation[i] == '('
        encapsulation = encapsulation+1
      elsif equation[i] == ')'
        encapsulation = encapsulation-1
      elsif encapsulation==0 && equation[i] == '*'
        @startEquation = Equation.new(equation[0::i])
      end
    end
  end

  def getValue():Numeric
  return

  end
end
