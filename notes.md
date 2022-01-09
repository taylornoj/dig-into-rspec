Changing test so that it tried to assert the return value from Boat.new is a Hash: 

```javascript
describe Boat do
  it 'should create boats' do
    expect(Boat.new).to be_a Hash
  end
end
```

Result from test looked like:

```
F

Failures:

  1) Boat should create boats
     Failure/Error: expect(Boat.new).to be_a Hash
       expected #<Boat:0x00000000019c0030> to be a kind of Hash
     # ./boat_spec.rb:14:in `block (2 levels) in <top (required)>'

Finished in 0.02819 seconds (files took 0.09772 seconds to load)
1 example, 1 failure

Failed examples:

rspec ./boat_spec.rb:9 # Boat should create boats

```
The part of the error with this:

  ./boat_spec.rb:5:in `block (2 levels) in <top (required)>'. 

  This is a stack trace that lists the methods and blocks that were being invoked when the failure happened. It starts by telling us which file the problem happened in, then :14 to tell us which line of that file it was on.

  At the bottom of this output it lists which tests failed. In this case the test Boat should create boats failed in the file ./boat_spec.rb on line 9.

