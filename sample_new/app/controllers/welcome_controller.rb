class WelcomeController < ApplicationController
  def index
    flash[:notice] = "Logged in Successfully"
    flash[:alert] = "Invalid User Credentials"
  end
end