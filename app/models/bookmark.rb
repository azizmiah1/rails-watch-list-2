class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list_id, message: "Already in the list" }
  validates :comment, length: { minimum: 6 }
end


# class Bookmark < ApplicationRecord
#   belongs_to :movie, :list
#   validates :comment, length: { min: 6 }, allow_blank: false
# end
