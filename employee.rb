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
  def initialize(input_first_name, input_last_name, input_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary} per year."
  end
end


employee = Employee.new("Majora", "Carter", 80000, true)

employee.print_info