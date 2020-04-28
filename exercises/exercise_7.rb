require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"
require_relative "./exercise_6"

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Store
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :sells_something

  def sells_something
    if (!mens_apparel && !womens_apparel) # Why must we remove : in this line
      errors.add(:mens_apparel, "Must sell something") # And use : in this line?
      errors.add(:womens_apparel, "Must sell something")
    end
  end
end

class Employee
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, inclusion: 40..200
end

@store2.employees.create(first_name: "Khurram5", last_name: "Virani", hourly_rate: 30)
@store2.employees.create(first_name: "Khurram5", last_name: "", hourly_rate: 60)
sellnothing = Store.create(name: "Nothing", annual_revenue: 300000, mens_apparel: false, womens_apparel: false)
puts "Enter store name:"
name = gets.chomp
new_store = Store.new(name: name)
pp new_store.errors.messages if (!new_store.valid?)