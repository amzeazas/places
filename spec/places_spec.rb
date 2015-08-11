require('rspec')
require('task')

describe(Places) do
  describe("#location") do
    it("lets you give it a location") do
      test_place = Places.new("Berlin, Germany")
      expect(test_place.description()).to(eq("Berlin, Germany"))
    end
  end
end
