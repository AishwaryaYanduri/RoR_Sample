class Agent < ActiveRecord::Base
  attr_accessible :company, :email, :fullname, :mobile

  validates :email, presence: true, format: { with: /[a-z0-9]+@[a-z]+\.[a-z]{2,3}/, message: "Please provide a vaild email address." }, uniqueness:true
  validates :fullname, presence: true, format: { with: /[a-z0-9]/, message: "Please provide a user full name." }
  validates :company, presence: true
  validates :mobile, numericality: true, :length => {:minimum => 10, :maximum => 10}
end
