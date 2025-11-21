defmodule KitchenCalculator do
  def get_volume(volume_pair) do
  {_, volume} = volume_pair
    volume
  end

  def to_milliliter(volume_pair) do

    case volume_pair do
      {:cup, v} ->  {:milliliter, 240 * v}
      {:teaspoon, v} -> {:milliliter, 5 * v}
      {:tablespoon, v} -> {:milliliter, 15 * v}
      {:milliliter, v} -> {:milliliter, 1 * v}
      {:fluid_ounce, v} ->  {:milliliter, 30 * v}
    end

  end

  def from_milliliter(volume_pair, unit) do
    {_, v} = volume_pair

    case {unit, v} do
      {:cup, v} ->  {:cup, (v/240)}
      {:teaspoon, v} -> {:teaspoon, (v/5)}
      {:milliliter, v} -> {:milliliter, (v/1)}
      {:tablespoon, v} -> {:tablespoon, (v/15)}
      {:fluid_ounce, v} ->  {:fluid_ounce, (v/30)}
    end

  end

  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
