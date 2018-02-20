defmodule BowlinggameTest do
  use ExUnit.Case
  import Bowlinggame.TestHelpers
  doctest Bowlinggame

 test "Simple score" do
    assert_score("2|3 4|3 2|5 2|4 8|0 0|3 8|1 2|3 2|1", 53)
  end
end
