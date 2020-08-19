class Restaurant < ApplicationRecord
    has_many :reviews, dependent: :destroy

    validates :name, :address, :category, presence: true

    @allowed_categories = ["chinese", "italian", "japanese", "french", "belgian"]

    validates :category, inclusion: { in: @allowed_categories }
end
