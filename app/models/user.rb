class User < ApplicationRecord
  after_create :assign_default_role
  rolify
  has_many :activities, dependent: :destroy
  has_many :comments
  validates :nickname, presence: true, uniqueness: { case_sensitive: false }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def assign_default_role
    self.add_role(:user) if self.roles.blank?
  end
end
