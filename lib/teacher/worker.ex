defmodule Teacher.Worker do
  use Task

  def start_link(num) do
    Task.start_link(__MODULE__, :square_of, num)
  end

  def square_of(num) do
    IO.puts(num * num)
  end

end
