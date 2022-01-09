# requiring code to test
require_relative 'boat'

# describe Boat = telling rspec what code you're writing tests for
# all tests will go between do and end
describe Boat do
  # it takes in string, which is description of feature to test
  it 'should create boats' do
    expect(Boat.new).to be_a Boat
  end
end