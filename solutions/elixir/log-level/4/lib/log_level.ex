defmodule LogLevel do
  def to_label(level, legacy?) do
    # Please implement the to_label/2 function
    cond do
      level == 0 and not legacy? -> :trace
      level == 1 and not legacy? -> :debug
      level == 2 and not legacy? -> :info
      level == 3 and not legacy? -> :warning
      level == 4 and not legacy? -> :error
      level == 5 and not legacy? -> :fatal
      true -> :unknown
    end
  end

  def alert_recipient(level, legacy?) do
    # Please implement the alert_recipient/2 function
  end
end
