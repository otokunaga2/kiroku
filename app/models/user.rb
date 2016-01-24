class User < ActiveRecord::Base
  validates :name, length: { maximum: 100}, presence: true
  validates :email, length: { maximum: 100}, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :documents
  #has_many :relationships, dependent: :destroy
end
