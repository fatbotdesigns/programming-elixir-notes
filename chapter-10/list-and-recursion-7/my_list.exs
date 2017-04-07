defmodule MyList do
  def span(from, to) when from == to, do: [to]
  def span(from, to), do: [from | span(from + 1, to)]

  def primes(n) do
    seive = MyList.span(2, n)
    products = for x <- seive, y <- seive, x >= y, x * y <= n, do: x * y
    seive -- products
  end
end

