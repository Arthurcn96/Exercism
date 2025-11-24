defmodule BirdCount do
  def today([]), do: nil
  def today([head | _tail]) do
    head
  end

  def increment_day_count([]), do: 0
  def increment_day_count([head | tail]) do
    [head + 1 | tail]
  end

  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([head | tail]) do
    case {head , tail} do
      {0, _tail} -> true
      {_ , []} -> false
      {_,_} -> has_day_without_birds?(tail)
    end
  end

  def total([]), do: 0
  def total([head | tail]) do
    case tail do
      [] -> head
      _ -> head + total(tail)
    end

  end

  def busy_days([]), do: 0
  def busy_days([head | tails]) do
    case tails do
      [] -> if head >= 5, do: 1, else: 0
      _ -> (if head >= 5, do: 1, else: 0) + busy_days(tails)
    end
  end
end
