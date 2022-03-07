class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 6, maximum: 100}
    validates :description, presence: true, length: { minimum: 12, maximum: 300}    
end    