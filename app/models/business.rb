class Business < ApplicationRecord
	belongs_to :user
	mount_uploaders :pictures, PictureUploader

  validates_presence_of   :pictures
  validates_integrity_of  :pictures
  validates_processing_of :pictures

end
