class Achievement < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_many :pictures
  serialize :pictures
  mount_uploaders :pictures, PictureUploader


  validates :title,
            :uniqueness => true,
            :presence => true,
            :length => {
              in: 5..50,
              message: "length should be between 5 and 50 characters"
            }

  validates :description,
            :presence => true,
            :length => {
              in: 5..5000,
              message: "length should be between 5 and 500 characters"
            }

end
