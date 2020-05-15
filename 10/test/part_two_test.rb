require_relative('../main/bot_factory_balance.rb')

# --- Part Two ---

# What do you get if you multiply together the values of
# one chip in each of outputs 0, 1, and 2?

describe "day 10 part two" do
  it "can decode the puzzle input" do
    factory = BalanceBotFactory.new(File.read(__dir__+'/input_puzzle.txt'))
    output_zero = factory.output(0)
    output_one = factory.output(1)
    output_two = factory.output(2)

    p "output zero is #{output_zero.inspect}"
    p "output one is #{output_one.inspect}"
    p "output two is #{output_two.inspect}"

    r = output_zero.chips[0] * output_one.chips[0] * output_two.chips[0]
    p "result is #{r}"
  end
end