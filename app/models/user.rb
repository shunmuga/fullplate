class User < ActiveRecord::Base
  has_many :foods
  has_secure_password
  before_save { self.email = email.downcase }
  enum role: [:pantry, :supplier, :individual, :admin]
  after_initialize :set_default_role, :if => :new_record?
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 }
  def set_default_role
    self.role ||= :pantry
  end
end
