
class Employee
  attr_reader :first_name, :last_name, :salary, :active
  attr_writer :first_name, :active
  
  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    p "#{@first_name} #{@last_name} makes $#{@salary.round()} per year!"
  end

  def give_annual_raise
    @salary = @salary * 1.05
  end
end


# employee1 = Employee.new("Majora", "Carter", 80000, true)
employee1 = Employee.new({:first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true})

# employee1.first_name = "Arojam"
# p employee1.last_name

# employee1.print_info
# employee1.give_annual_raise
# employee1.print_info




employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: false)

# employee2.print_info
# employee2.give_annual_raise
# p employee2




# manager can do everything an employee can do, and also send reports


class Manager < Employee
  attr_reader :employees
  
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    p 'about to send the report...'
    # actual logic here
    p 'totally just sent that report'
  end

  def give_all_raises
    i = 0
    while i < @employees.length
      @employees[i].give_annual_raise
      p 'you get a raise'
      i += 1
    end
    # @employees.each do |employee|
    #   employee.give_annual_raise
    # end
    p 'everybody gets a raise'
  end

  def fire_all_employees
    p 'firing all employees'
    @employees[0].active = false
    @employees[1].active = false
  end
end


manager = Manager.new(first_name: "Manny", last_name: "Smith", salary: 100000, active: true, employees: [employee1, employee2])

# manager.print_info
# manager.send_report
# manager.give_all_raises


# employee1.print_info
# employee2.print_info

manager.fire_all_employees
p manager.employees