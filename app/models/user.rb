class User < ActiveRecord::Base
  has_and_belongs_to_many :doors
  validates :email, presence: true, uniqueness: { case_sensitive: false}
  validates :first_name, presence: true
end
