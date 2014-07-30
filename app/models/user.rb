class User < ActiveRecord::Base
	has_many :visits

  validates :user_firstname, presence: true, length: {maximum: 30}
  validates :user_firstname, format: {with: /\A[a-zA-Z]+\z/} #alphanumeric regex
  validates :user_lastname, presence: true, length: {maximum: 30}
  validates :user_lastname, format: {with: /\A[a-zA-Z]+\z/} #alphanumeric regex
  

end

