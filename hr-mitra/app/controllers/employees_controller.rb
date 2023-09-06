class EmployeesController < ApplicationController

    # before_action helps to follow the DRY code rule 

    before_action :set_employee, only: [:edit, :show, :update, :destroy]




    def index
        @employee=Employee.all()
    end
    def new
        @employee=Employee.new
    end
    def create
        @employee=Employee.new(employee_params)

        if @employee.save
            redirect_to employees_path, notice: "Employee has been added successfully"
        else 
            render :new
        end
    end


    def edit
    end

    def show
    end

    def graph
        @department_data = EmployeeGraphService.new.department_data
    end
    # def graph
    #     @employee= Employee.new(department: params[:employee][:department])    
    # end


    def update
        if @employee.update(employee_params)
            redirect_to employees_path, notice: "Employee has been updated successfully"
        else 
            render :edit
        end
    end

    def destroy
        if @employee.destroy
            redirect_to employees_path, notice: "Employee has been deleted successfully"
        end
    end

    
    private

    def employee_params
        params.require(:employee).permit(:F_Name,:L_Name,:Department,:Adreess,:Mail_Id,:Contact_No, :date_of_birth, :date_of_joining)
    end

    def set_employee
        @employee = Employee.find(params[:id])
        # same query in edit show destroy update

        # Error handling

        rescue ActiveRecord::RecordNotFound => error
            redirect_to employees_path, alert: error
    end
end 