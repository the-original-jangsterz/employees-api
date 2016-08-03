class Api::V2::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render 'index.json.jbuilder'
  end

  def show
    @employee = Employee.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @employee = Employee.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email]
    )
    @employee.save
    render 'show.json.jbuilder'
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.first_name = params[:first_name] || @employee.first_name
    @employee.last_name = params[:last_name] || @employee.last_name
    @employee.email = params[:email] || @employee.email
    @employee.birthdate = params[:birthdate] || @employee.birthdate
    @employee.ssn = params[:ssn] || @employee.ssn
    @employee.save
    render 'show.json.jbuilder'
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
    render json: { message: "Employee successfully destroyed!" }
  end
end
