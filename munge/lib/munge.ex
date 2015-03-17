defmodule Munge do

  def g2sort([hd| tail]) do
     Enum.concat([hd, List.last(tail)], g2sort(Enum.drop(tail, -1)))
  end

  def g2sort([]) do
    []
  end

  def g2_transform(entries) do
    final_ds = Enum.map(entries, fn(x) ->
        {key, val_list} = x
        Dict.put(%{}, key, Munge.g2sort(val_list))
      end)
    f_map = Dict.put(%{}, "entry", final_ds)
    Poison.Encoder.encode(f_map, %{})
  end
end
