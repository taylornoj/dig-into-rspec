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
    expect(Boat.new).to be_a Hash
  end
end