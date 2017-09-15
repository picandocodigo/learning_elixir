defmodule TimeConversion do
  def main(input) do
    input
    |> split_values
    |> new_time
  end

  def split_values(input) do
    [hour, minutes, seconds] = String.split(input, ":")
    period = String.slice(seconds, 2..3)
    seconds = String.slice(seconds, 0..1)
    [hour, minutes, seconds, period]
  end

  def new_time(["12", minutes, seconds, "PM"]) do
    "12:#{minutes}:#{seconds}"
  end
  def new_time([hour, minutes, seconds, "PM"]) do
    hour = String.to_integer hour
    "#{hour + 12}:#{minutes}:#{seconds}"
  end
  def new_time(["12", minutes, seconds, "AM"]) do
    "00:#{minutes}:#{seconds}"
  end
  def new_time([hour, minutes, seconds, "AM"]) do
    "#{hour}:#{minutes}:#{seconds}"
  end
end


input = IO.gets("") |> String.trim
TimeConversion.main(input) |> IO.puts
