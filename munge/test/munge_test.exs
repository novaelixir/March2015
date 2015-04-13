defmodule MungeTest do
  use ExUnit.Case
  doctest Munge

  test "assert the data is there" do
    assert true == File.exists? "fixtures/2015.json"
  end

  test "assert that our stub file is there" do
    assert true == File.exists? "/tmp/a.json"
  end

  test "we can parse the json file with Poison" do
    {:ok, data } = File.read "/tmp/a.json"
    json_data = Poison.Parser.parse! data
    entries =  json_data["entry"]
    File.write "/tmp/b.json", Munge.g2_transform(entries)
#
    #[{"abc":["lorem","sit","ipsum","amit","dolor","sic"]},{"def":["one","four","two","three"]},{"ghi":["a","b"]},{"jkl":["optimus","scream","prime","star"]}]
    end

end
