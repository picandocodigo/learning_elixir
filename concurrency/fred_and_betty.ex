defmodule FredAndBetty do
  def token do
    receive do
      {sender, msg} ->
        send sender, {:ok, msg}
    end
  end
end

fred = spawn(FredAndBetty, :token, [])
send fred, {self, "fred"}

betty = spawn(FredAndBetty, :token, [])
send betty, {self, "betty"}

receive do
  {:ok, message} -> IO.puts message
end

receive do
  {:ok, message} -> IO.puts message
end
