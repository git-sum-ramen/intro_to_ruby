# first name
# last name
# salary
# active status


# array
# employee1 = ["Majora", "Carter", 80000, true]
# p employee1[0] + " " + employee1[1] + " makes $" + employee1[2].to_s + " per year."

# employee2 = ["Danilo", "Campos", 70000, false]
# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# hash
# employee1 = {'first_name' => "Majora", "salary" => 80000, "last_name" => "Carter",  "active" => true }

# p "#{employee1['first_name']} #{employee1['last_name']} makes $#{employee1['salary']} per year."

# employee2 = {:first_name => "Danilo", :last_name => "Campos", :salary => 70000, :active => false }
# employee2 = {first_name: "Danilo", last_name: "Campos", salary: 70000, active: false }

# p "#{employee2[:first_name]} #{employee2[:last_name]} makes $#{employee2[:salary]} per year."


# class

class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name
  
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary.round} per year?"
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end


# employee1 = Employee.new("Majora", "Carter", 80000, true)
employee1 = Employee.new({:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true})

employee1.first_name = "Arojam"
p employee1.last_name

employee1.print_info
employee1.give_annual_raise
employee1.print_info




employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: false)

employee2.print_info
employee2.give_annual_raise
employee2.print_info

