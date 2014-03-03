class User < ActiveRecord::Base
   
  devise :confirmable, :database_authenticatable, :lockable, 
         :omniauthable, :registerable, :recoverable, :rememberable,
         :timeoutable, :trackable, :validatable

  has_and_belongs_to_many :doors
  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates :first_name, presence: true
end
