class Comment < ApplicationRecord
  resourcify
  belongs_to :activity
  belongs_to :user
  validates_presence_of :content
end
