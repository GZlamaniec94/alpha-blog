class Article < ApplicationRecord
    scope :ordered, -> { order(created_at: :desc) }
    belongs_to :user
    validates :title, presence: true, length: { minimum: 6, maximum: 100}
    validates :description, presence: true, length: { minimum: 12, maximum: 300}    
end    