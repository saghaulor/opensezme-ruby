class Door < ActiveRecord::Base
  belongs_to :owner, :class_name => 'User'
  has_and_belongs_to_many :users
  validates_associated :owner
  validates :name, :owner, presence: true
  validates :door_path, presence: true, uniqueness: { case_sensitive: false } 
  validate :owner_is_a_user

  def owner_is_a_user
    self.users << self.owner unless self.users.include? self.owner
  end
end
