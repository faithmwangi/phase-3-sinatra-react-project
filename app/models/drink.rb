class Drink < ActiveRecord::Base
    belongs_to :user
  
    validates :name, presence: true
    validates :ingredients, presence: true
    validates :instructions, presence: true
    validates :category, presence: true
    validates :image_url, presence: true
    validates :average_rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }, allow_nil: true
  end
  