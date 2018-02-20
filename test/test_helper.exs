defmodule Bowlinggame.TestHelpers do
  import ExUnit.Assertions

  def assert_score(frames_strings, expected_score) do
    frames = parse_frames(frames_strings)
    IO.puts "The frames are:"
    IO.inspect frames
    score = Bowlinggame.Frame.score(frames)
    assertion = (score == expected_score)
    message = "Expected score of #{frames_strings} to be #{expected_score} but was #{score}"
    assert(assertion, message)
  end

  def parse_frames(frames_strings) do
    frames_strings
    |> String.split(" ")
    |> Enum.map(&(parse_throws(&1)))
  end

  def parse_throws(throws_strings) do
    throws_strings
    |> String.split("|")
  end

end
ExUnit.start()


