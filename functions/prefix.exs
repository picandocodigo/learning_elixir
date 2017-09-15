prefix = fn first_string ->
  (fn second_string ->
    "#{first_string} #{second_string}"
  end)
end

mrs = prefix.("mrs")
IO.puts mrs.("test")

IO.puts prefix.("Hello").("World")
