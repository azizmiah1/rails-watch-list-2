class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  # you can;t destro if theere is a bookmark
  validates :name, uniqueness: true, presence: true
end


# class List < ApplicationRecord
#   has_many :bookmarks
#   validates :name, uniqueness: true
# end
