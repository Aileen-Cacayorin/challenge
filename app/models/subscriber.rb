class Subscriber < ActiveRecord::Base
  
  validates :name, :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }

  enum status: [:active, :inactive]
end