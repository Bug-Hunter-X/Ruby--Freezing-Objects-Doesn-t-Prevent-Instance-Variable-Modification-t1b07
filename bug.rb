```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.instance_variable_set(:@value, 20) # Modifying the instance variable directly
puts my_object.value #=> 20

# Now, let's try to freeze the object:
my_object.freeze

#This will still work because we can still modify instance variables after freezing
my_object.instance_variable_set(:@value, 30) 
puts my_object.value #=> 30
```