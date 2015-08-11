require('rspec')
require('places')

describe(Places) do
  describe("#location") do
    it("lets you give it a location") do
      test_place = Places.new("Berlin, Germany")
      expect(test_place.location()).to(eq("Berlin, Germany"))
    end
  end
end
