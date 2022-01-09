# requiring code to test
require_relative 'boat'

# describe Boat = telling rspec what code you're writing tests for
# all tests will go between do and end
describe Boat do
  # it takes in string, which is description of feature to test
  # here we are testing that Boat class can create instances
  it 'should create boats' do
    #trying to asser that return value from Boat.new meets criteria, so Boat.new is parameter to expect
    # 'to' method on obj returned from our call
    # be_a = matcher; methods that can check whether argument passed expect
    # then passing Boat class to be_a matcher; returning t/f
    expect(Boat.new).to be_a Boat
  end
  # practice test driven development
  # this will be used to determine whether a passenger is prepared to board a boat
  # the '#' indicates that allowed_aboard? is an instance method of Boat
  describe '#allowed_aboard?' do
    it 'returns true if inventory includes a life jacket' do
      a_boat = Boat.new
      # array passed to instance method that should return true, stored in variable 'allowed'
      allowed = a_boat.allowed_aboard?(['life jacket', 'sun glasses'])
      # assertion to say returned value in allowed is true
      # 'be' matcher; checks whether values passed to expect are same as value passed to be
      expect(allowed).to be true
    end
  end
end