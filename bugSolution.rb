```ruby
class MyClass
  def initialize(value)
    @value = value.freeze # Freeze the value itself
  end

  def value
    @value
  end

  def update_value(new_value)
     #instead of modifying the instance variable, return a new object with the updated value.  This creates a new object and leaves original frozen object unchanged.
     MyClass.new(new_value)
  end
end

my_object = MyClass.new(10)
puts my_object.value #=> 10

my_object.freeze

#Attempting to modify the instance variable will throw an exception:
#my_object.instance_variable_set(:@value, 20)
# This will work correctly:
new_object = my_object.update_value(20) 
puts new_object.value #=>20
puts my_object.value #=> 10
```