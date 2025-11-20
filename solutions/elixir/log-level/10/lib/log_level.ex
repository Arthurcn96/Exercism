defmodule LogLevel do
  # Solution with pattern matching and case statements

  def to_label(level, legacy?) do
    case{level, legacy?} do
      {0, false} -> :trace
      {1, _} -> :debug
      {2, _} -> :info
      {3, _} -> :warning
      {4, _} -> :error
      {5, false} -> :fatal
      {_,_} -> :unknown

    end
  end

  def alert_recipient(level, legacy?) do

    label = to_label(level, legacy?)

    case {label, legacy?} do
      {:error, _} -> :ops
      {:fatal, _} -> :ops
      {:unknown, true} -> :dev1
      {:unknown, false} -> :dev2
      {_,_} -> false
    end
  end
end
