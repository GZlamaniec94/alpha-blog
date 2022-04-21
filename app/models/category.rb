class Category < ApplicationRecord
    validates :name, presence: true,
        uniqueness: { case_sensitive: false }, 
        length: {minimum: 3, maximum: 25}
    validates_uniqueness_of :name
end        