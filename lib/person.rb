class Person
  # First make getters/setters for all possible attributes that could be passed
  # in as arguments when initialized.
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height, :weight, :handed, :complexion, :t_shirt_size, :wrist_size, :glove_size, :pant_length, :pant_width

  # Next we want to make the argument for initialize accept an object of
  # attributes with values (see bottom of page).
  def initialize(attributes)
    # If any attributes are listed as arguments....
    if attributes
      # Iterate through each attribute, which will be in the format of
      #   Person.new(name: "Chris", birthday: "11/23")      key/value pairs!
      attributes.each do |attr, value|
        self.send("#{attr}=", value)
      end
    end
  end
end




# For .send, The name of the key becomes the name of a setter method and the
# value associated with the key is the name of the value you want to pass to
# that method, just like above.

# Example #

# sophie = User.new
# sophie.name = "Sophie"    <---------(This is better)
#     (same as)
# sophie = User.new
# sophie.send("name=", "Sophie")

##############################################################################
# Example Program Use #
# bob_attributes = {name: "Bob", hair_color: "Brown"}
#
# bob = Person.new(bob_attributes)
# bob.name       # => "Bob"
# bob.hair_color # => "Brown"
#
# susan_attributes = {name: "Susan", height: "5'11\"", eye_color: "Green"}
#
# susan = Person.new(susan_attributes)
# susan.name      # => "Susan"
# susan.height    # => "5'11""
# susan.eye_color # => "Green"
