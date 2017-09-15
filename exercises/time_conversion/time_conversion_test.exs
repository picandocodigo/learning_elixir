# TIP: A single file test without using mix
ExUnit.start()

defmodule TimeConversionTest do
  use ExUnit.Case
  import TimeConversion

  test "Convert 12-hour time to 24-hour format" do
    assert main("12:00:00AM") == "00:00:00"
    assert main("12:33:11AM") == "00:33:11"

    assert main("12:00:00PM") == "12:00:00"
    assert main("12:33:11PM") == "12:33:11"

    assert main("01:00:00AM") == "01:00:00"
    assert main("01:00:00PM") == "13:00:00"

    assert main("03:52:42PM") == "15:52:42"
    assert main("03:00:42AM") == "03:00:42"

    assert main("07:00:42PM") == "19:00:42"
    assert main("07:13:42AM") == "07:13:42"
  end
end
