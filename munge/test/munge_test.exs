defmodule MungeTest do
  use ExUnit.Case
  doctest Munge

  test "assert the data is there" do
    assert true == File.exists? "fixtures/2015.json"
  end

  test "filter deletes blacklisted items (empty list)" do
    example = %{ "foo" => "bar", "first" => "value", "second" => "value" }
    assert Munge.filter(example, []) == example
  end

  test "filter deletes blacklisted items (keys don't exit)" do
    example = %{ "foo" => "bar", "first" => "value", "second" => "value" }
    assert Munge.filter(example, ["nonexistant"]) == example
  end

  test "filter deletes blacklisted items" do
    example = %{ "foo" => "bar", "first" => "value", "second" => "value" }
    assert Munge.filter(example, ["foo"]) == %{ "first" => "value", "second" => "value" }
  end
end
