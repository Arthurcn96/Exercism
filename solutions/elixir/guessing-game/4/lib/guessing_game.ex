defmodule GuessingGame do
  def compare(secret_number, guess \\ :no_guess) do
    cond do
      guess == :no_guess or is_nil(guess) -> "Make a guess"
      guess == secret_number -> "Correct"
      abs(secret_number - guess) == 1 -> "So close"
      guess < secret_number -> "Too low"
      guess > secret_number -> "Too high"
    end
  end
end
