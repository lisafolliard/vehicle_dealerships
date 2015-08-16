require('rspec')
require('dealership')

describe(Dealership) do
  before() do
    Dealership.clear()
  end

  describe('#name') do
    it('returns name of dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      expect(test_dealership.name()).to(eq("Bob's Used Cars"))
    end
  end

  describe('#id') do
    it('returns id of dealership') do
      test_dealership = Dealership.new("Bob's Cars")
      expect(test_dealership.id()).to(eq(1))
    end
  end

  describe(".all") do
  it("is empty at first") do
    expect(Dealership.all()).to(eq([]))
  end
end

describe("#save") do
  it("adds a dealership to the array of saved dealerships") do
    test_dealership = Dealership.new("Bob's Used Cars")
    test_dealership.save()
    expect(Dealership.all()).to(eq([test_dealership]))
  end
end

describe(".clear") do
    it("empties out all of the saved dealerships") do
      Dealership.new("Bob's Used Cars").save()
      Dealership.clear()
      expect(Dealership.all()).to(eq([]))
    end
  end

  describe('#cars') do
    it('initially returns an empty array of cars for the dealership') do
      test_dealership = Dealership.new("Bob's Cars")
      expect(test_dealership.cars()).to(eq([]))
    end
  end




end