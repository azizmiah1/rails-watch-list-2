class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end


# class Movie < ApplicationRecord
#   has_many :bookmarks
#   validates :title, presenece: true, uniqueness: true
#   validates :overview, presence: true
# end
