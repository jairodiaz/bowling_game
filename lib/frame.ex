defmodule Bowlinggame.Frame do
  alias Bowlinggame.Score

  def score(frames) do
      all_throws_score = Enum.map(frames, fn [t1,t2] -> sum(t1, t2) end)
      IO.inspect all_throws_score
      Enum.reduce(all_throws_score, 0, fn(x, acc) -> x + acc end)
  end

  def sum(str1, str2) do
    String.to_integer(str1) + String.to_integer(str2)
  end
end
