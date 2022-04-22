class Article < ApplicationRecord
    scope :ordered, -> { order(created_at: :desc) }
    belongs_to :user
    has_many :article_categories
    has_many :categories, through: :article_categories
    validates :title, presence: true, length: { minimum: 6, maximum: 100}
    validates :description, presence: true, length: { minimum: 12, maximum: 300}    
end    