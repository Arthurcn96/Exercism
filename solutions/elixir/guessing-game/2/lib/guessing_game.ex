defmodule GuessingGame do
  def compare(secret_number, guess) do
    cond do
      is_nil(guess) -> "Make a guess"
      guess == secret_number -> "Correct"
      guess < secret_number -> "Too low"
      guess > secret_number -> "Too high"
      closeness(secret_number,guess) -> "Very close"
    end
  end

  def closeness(secret_number, guess) do
    sub = abs(secret_number - 1)
    add = abs(secret_number + 1)

    sub == guess or add == guess
  end

end
