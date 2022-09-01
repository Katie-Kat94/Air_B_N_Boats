class Boat < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :category, :name, :capacity, :location, :price, :rating, presence: true
  validates :category, inclusion: { in: ["Luxury", "Fishing", "Sailing", "Superyacht", "River Boat", "Speedboat", "Houseboat", "Banana Boat"] }
  include PgSearch::Model
  pg_search_scope :search_by_category,
    against: [ :category ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
