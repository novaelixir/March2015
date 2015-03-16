defmodule MungeTest do
  use ExUnit.Case
  doctest Munge

  test "assert the data is there" do
    assert true == File.exists? "fixtures/2015.json"
  end
end
