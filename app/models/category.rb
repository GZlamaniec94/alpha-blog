class Category < ApplicationRecord
    scope :ordered, -> { order(created_at: :desc) }
    has_many :article_categories
    has_many :articles, through: :article_categories
    validates :name, presence: true,
        uniqueness: { case_sensitive: false }, 
        length: {minimum: 3, maximum: 25}
    validates_uniqueness_of :name
end        