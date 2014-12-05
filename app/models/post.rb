class Post < ActiveRecord::Base
  belongs_to :user, :dependent => :destroy
  belongs_to :collection, :dependent => :destroy

  validates :body, presence: true, length: { maximum: 150 }
end
