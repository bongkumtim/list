class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  mount_uploaders :pictures, PictureUploader, dependent: :destroy
         
  has_many :businesses, dependent: :destroy

end
