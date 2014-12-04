class Collection < ActiveRecord::Base
  belongs_to :user
  has_many :posts
  validates :name, presence: true, length: { maximum: 30 }
end
