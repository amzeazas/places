require('rspec')
require('places')

describe(Places) do
  describe(Places) do
    before() do
      Places.clear()
    end
  end

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
      expect(Places.all()).to(eq([test_place]))
    end
  end
  describe(".clear") do
    it("empties out all of the saved places") do
      Places.new("Phrae, Thailand").save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end
end
