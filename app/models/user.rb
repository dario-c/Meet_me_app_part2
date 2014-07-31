class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable :recoverable,
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
	has_many :visits
  has_many :locations


  #validates :user_firstname, presence: true, length: {maximum: 30}
  #validates :user_firstname, format: {with: /\A[a-zA-Z]+\z/} #alphanumeric regex
  #validates :user_lastname, presence: true, length: {maximum: 30}
  #validates :user_lastname, format: {with: /\A[a-zA-Z]+\z/} #alphanumeric regex


end

