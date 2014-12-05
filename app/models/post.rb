class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :collection

  validates :body, presence: true, length: { maximum: 150 }
end
