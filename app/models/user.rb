class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :collections, dependent: :destroy
  has_many :posts, dependent: :destroy
  validates_associated :collections
  validates_associated :posts
  validates :name, presence: true, uniqueness: true
end
