gem 'minitest', '>=5'

require 'minitest/autorun'
require 'minitest/pride'

require './main/parse_direction'

class DirectionParserTest < Minitest::Test
  def test_it_can_convert_string_to_directions
    directions = DirectionParser.new('R2, L3').parse
    assert_equal [:right, 2, :left, 3], directions
  end
end