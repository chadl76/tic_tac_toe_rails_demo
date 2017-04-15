Person = Struct.new(:id, :name, :email)

person1 = Person.new(1, "Chad", "c@gmail.com")

person2 = Person.new(2, "Bill", "b@yahoo.com")
puts person1
puts person2

array = []

array << person1

array << person2

puts array.length
puts array.size
puts array.inspect