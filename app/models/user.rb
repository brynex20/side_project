class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable
  mount_uploader :image, ImageUploader
  enum role: { client: 0, admin: 1 }
  has_many :homes

end
