class Collection < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  has_many :posts
  validates :name, presence: true, length: { maximum: 30 }
end
