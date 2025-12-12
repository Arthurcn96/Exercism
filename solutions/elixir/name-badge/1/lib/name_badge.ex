defmodule NameBadge do
  def print(id, name, department \\ "OWNER") do
    department = department || "OWNER"
    if id == nil do
    "#{name} - #{String.upcase(department)}"
    else
     "[#{id}] - #{name} - #{String.upcase(department)}"
    end
  end
end
