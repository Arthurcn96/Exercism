defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    cond do
      level == 0 and legacy? -> :debug
      level == 1 and legacy? -> :info
      level == 2 and legacy? -> :warning
      level == 3 and legacy? -> :error
      level == 4 and legacy? -> :fatal
      level == 5 and legacy? -> :unknown
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function

  end
end
