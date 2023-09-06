class EmployeeGraphService
  def initialize
    @employees = Employee.all
  end

  def department_data
    @employees.group(:department).count
  end
end









