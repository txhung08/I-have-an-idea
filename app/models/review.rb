class Review < ActiveRecord::Base
belongs_to :project
belongs_to :user

validates :title,
          :uniqueness => true,
          :presence => true,
          :length => {
            in: 5..150,
            message: "length should be between 5 and 150 characters"

          }

validates :content,
          :uniqueness => true,
          :presence => true,
          :length => {
            in: 5..1000,
            message: "length should be between 5 and 1000 characters"

                    }

end
