defmodule Username do
  def sanitize(username) do
    Enum.flat_map username, fn char ->
      case char do
        ?ä -> ~c"ae"
        ?ö -> ~c"oe"
        ?ü -> ~c"ue"
        ?ß -> ~c"ss"
        ?\s -> []
        ?_ -> ~c"_"
        c when c >= ?a and c <= ?z -> [c]
        _ -> []
      end
   end
  end
end
