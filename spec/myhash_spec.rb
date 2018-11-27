require('rspec')
require('myhash')
require('pry')

describe(MyHash) do
  describe("#my_store") do
    it("creates an array with inputs") do
      test_hash = MyHash.new()
      expect(test_hash.my_store("kitten", "cute")).to(eq([["kitten", "cute"]]))
    end

    it("returns an value for each key") do
      test_hash = MyHash.new()
      test_hash.my_store("kitten", "cute")
      expect(test_hash.my_fetch("kitten")).to(eq("cute"))
    end

    it("creates an array with multiple arrays") do
      test_hash = MyHash.new()
      test_hash.my_store("kitten", "cute")
      test_hash.my_store("dog", "sloppy")
      expect(test_hash.my_fetch("dog")).to(eq("sloppy"))
    end
  end
end
