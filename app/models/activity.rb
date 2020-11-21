class Activity < ApplicationRecord
  resourcify
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates_presence_of :title, :content
  validates_length_of :title, :maximum => 60
end
