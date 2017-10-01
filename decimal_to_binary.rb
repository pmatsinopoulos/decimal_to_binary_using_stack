class DecimalToBinary
  def initialize(decimal)
    @decimal = decimal
  end

  def binary
    return '0' if decimal.zero?

    stack = []

    quotient = decimal

    while quotient > 0
      remainder = quotient % 2
      stack.push remainder
      quotient = quotient / 2
    end

    result = ''
    until stack.empty?
      result = "#{result}#{stack.pop}"
    end

    result
  end

  private

  attr_reader :decimal
end
