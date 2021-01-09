defmodule Teacher do
  def run() do
    IO.puts("Starting some work...")
    task = Task.async(&some_work/0)
    IO.puts("all done")
    result = Task.await(task)
    IO.puts(result)
  end

  defp some_work do
    :timer.sleep(2_000)

    10
    |> :rand.uniform()
  end
end
