class Subscriber < ActiveRecord::Base
  
  validates :name, :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates_format_of :email, with: URI::MailTo::EMAIL_REGEXP

  enum status: [:active, :inactive]
end