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

-----------------------

Writing test for method used to determine whether a passenger is prepared to board a boat:

```javascript
describe '#allowed_aboard?' do
    it 'returns true if inventory includes a life jacket' do
      a_boat = Boat.new
      allowed = a_boat.allowed_aboard?(['life jacket', 'sun glasses'])
      expect(allowed).to be true
    end
```

Part of the error message for the failing test indicates:

``` NoMethodError:
       undefined method `allowed_aboard?' for #<Boat:0x0000000002064f08>
     # ./boat_spec.rb:22:in `block (3 levels) in <top (required)>'
```

which means that the allowed_aboard? method hasn't been defined.

So lets define the method:
```javascript
class Boat
  def allowed_aboard?(inventory)
  end
end
```

But we still see failing tests:

```
.F

Failures:

  1) Boat#allowed_aboard? returns true if inventory includes a life jacket
     Failure/Error: expect(allowed).to be true
     
       expected true
            got nil
     # ./boat_spec.rb:26:in `block (3 levels) in <top (required)>'

Finished in 0.01615 seconds (files took 0.11416 seconds to load)
2 examples, 1 failure

Failed examples:

rspec ./boat_spec.rb:20 # Boat#allowed_aboard? returns true if inventory includes a life jacket
```