defmodule GuessingGame do
  def compare(secret_number, guess) do
    cond do
      is_nil(guess) -> "Make a guess"
      guess < secret_number -> "Too low"
      guess > secret_number -> "Too high"
      guess - secret_number <= 1 and guess - secret_number >= -1 -> "Very close"
      guess == secret_number -> "Correct"
    end
  end

end
