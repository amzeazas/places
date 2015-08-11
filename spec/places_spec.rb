require('rspec')
require('places')

describe(Places) do
  describe("#location") do
    it("lets you give it a location") do
      test_place = Places.new("Berlin, Germany")
      expect(test_place.location()).to(eq("Berlin, Germany"))
    end
  end
  describe(".all") do
    it("is empty at first") do
      expect(Places.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("adds a location to the array of saved locations") do
      test_place = Places.new("Phrae, Thailand")
      test_place.save()
      expect(Places.all()).to([test_location])
    end
  end
end
