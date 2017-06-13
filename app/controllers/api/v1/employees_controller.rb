class Api::V1::EmployeesController < ApplicationController
  def show
    @employee = Employee.find_by(id: params[:id])
    # render "show.html.erb"
    render :show
  end

  def index
    @employees = Employee.all.order(created_at: :asc)
    render :index
  end

  def create
    @employee = Employee.new(first_name: params[:param_first_name],
                                last_name: params[:param_last_name],
                                email: params[:param_email])
    if @employee.save
      render :show
    else
      render json: { errors: @employee.errors.full_messages.join(", ") }
    end
    # render "show.json.jbuilder"
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.update(first_name: params[:first_name],
                    last_name: params[:last_name],
                    email: params[:email])
    render :show
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
    # @employees = Employee.all
    # render :index
    render json: { message: "Employee has been deleted!" }
  end
end
