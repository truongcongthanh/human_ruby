class EmployeesController < ApplicationController

  layout "master"

  def index
    @employee = Employee.paginate(:page => params[:page], :per_page => 5).order(:firstname).order(:lastname)
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    # Instantiate a new object using form parameters
    @employee = Employee.create(employee_params)
    # Save the object
    if @employee.save
      # Nếu lưu thành công hiển thị thông báo
      flash[:notice] = "Employee created successfully"
      # Chuyển đến trang employee/index
      redirect_to(:action => 'index')
    else
      # If save fails, redisplay the form so user can fix problems
      render('new')
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])
    # Update the object
    if @employee.update_attributes(employee_params)
      # If update succeeds, redirect to the index action
      flash[:notice] = "Employee updated successfully"
      redirect_to(:action => 'index')
    else
      # If update fails, redisplay the form so user can fix problems
      render('edit')
    end
  end

  def delete
    @employee = Employee.find(params[:id])
  end

  def destroy
    employee = Employee.find(params[:id]).destroy
    flash[:notice] = "Employee deleted!"
    redirect_to(:action => 'index')
  end

  private

  def employee_params
    params[:employee].slice(:eid, :lastname, :firstname)
  end

end


