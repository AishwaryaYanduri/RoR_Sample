class UsersController < ApplicationController
  def new
    @agent = Agent.new
  end

  def create
    @agent = Agent.new(params[:agent])
    if @agent.save
      redirect_to users_path, notice: "User Created Successfully..!!"
    else
      render :new
    end
  end

  def all
    @agents = Agent.all
  end

  def edit
    @agent = Agent.find(params[:format])
  end

  def update
    byebug
    curr = params[:agent]
    @agent = Agent.find_by_email(curr[:email])
    @agent.mobile = curr[:mobile]
    if @agent.save
      redirect_to users_path, notice: "User Updated Successfully..!!"
    else
      render :edit
    end
  end

  def delete
    @agent = Agent.find(params[:format])
    if @agent.delete
      redirect_to users_path, notice: "User deleted Successfully..!!"
    end
  end
end
