defmodule DNA do
  def encode_nucleotide(code_point) do
    case code_point do
      ?\s -> 0b0000  # space
      ?A -> 0b0001
      ?C -> 0b0010
      ?G -> 0b0100
      ?T -> 0b1000
    end
  end
  
  def decode_nucleotide(encoded_code) do
    case encoded_code do
      0b0000 -> ?\s
      0b0001 -> ?A
      0b0010 -> ?C
      0b0100 -> ?G
      0b1000 -> ?T
    end
  end

def encode(dna) do
  Enum.reduce(dna, <<>>, fn nucleotide, acc ->
    encoded = encode_nucleotide(nucleotide)
    <<acc::bitstring, encoded::4>>
  end)
end

  def decode(bitstring) do
    for <<encoded::4 <- bitstring>>, do: decode_nucleotide(encoded)
  end
end
