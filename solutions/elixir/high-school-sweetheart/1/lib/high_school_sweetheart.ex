defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name
    |>String.first()
    |>String.upcase()

  end

  def initial(name) do
    name
    |>String.first()
    |>String.upcase()
    |>Kernel.<>(".")
  end

  def initials(full_name) do
    name = String.split(full_name, " ")
    [first_name, last_name] = name
    first_initial = initial(first_name)
    last_initial = initial(last_name)
    first_initial <> " " <> last_initial

  end

  def pair(full_name1, full_name2) do
    # ❤-------------------❤
    # |  X. X.  +  X. X.  |
    # ❤-------------------❤

    name1 = initials(full_name1)
    name2 = initials(full_name2)
    "❤-------------------❤\n
    |  #{name1}  +  #{name2}  |\n
    ❤-------------------❤"

    # Please implement the pair/2 function
  end
end
