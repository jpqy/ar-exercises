require_relative "../setup"
require_relative "./exercise_1"
require_relative "./exercise_2"
require_relative "./exercise_3"
require_relative "./exercise_4"
require_relative "./exercise_5"
require_relative "./exercise_6"
require_relative "./exercise_7"

puts "Exercise 8"
puts "----------"

# Your code goes here ...
class Employee
  before_create :generate_password

  private

  def generate_password
    self.password = [*("A".."Z"), *("a".."z")].sample(8).join
  end
end

new_employee = @store1.employees.create(first_name: "Khurram5", last_name: "Virani", hourly_rate: 60)
puts "New employee's password: #{new_employee.password}"
