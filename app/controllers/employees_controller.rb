class EmployeesController < ApplicationController
  def show
    @employee = Employee.find_by(id: params[:id])
    # render "show.html.erb"
    render :show
  end

  def index
    @employees = Employee.all
    render :index
  end
end
