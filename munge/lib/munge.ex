defmodule Munge do
  def filter(data, []) do
    data
  end

  def filter(data, [h|t]) do
    Dict.delete(filter(data, t), h)
  end

  def read_json(data) do
    Poison.Parser.parse!(data)
  end

  def read_file(location) do
    File.read! location
  end

  def encode(data) do
    Poison.Encoder.encode(data, [])
  end

  def write_file(data, location) do
    File.write!(location, data)
  end
end

# Munge.read_file("../2015.json") |> Munge.read_json |> Munge.filter(["regions", "locks", "scoring"]) |> Munge.encode |> Munge.write_file("../filtered2015.json")