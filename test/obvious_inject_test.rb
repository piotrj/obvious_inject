require 'test_helper'

class ObviousInjectTest < Minitest::Test
  def test_with_array
    my_array = [1,2,3,4]
    result = my_array.obvious_inject({}) do |x|
      x.memo[x.item.to_s] = x.item
      x.memo
    end

    assert_equal result, {"1" => 1, "2" => 2, "3" => 3, "4" => 4}
  end
end
