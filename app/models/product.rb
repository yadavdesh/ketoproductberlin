class Product < ApplicationRecord
  has_many :orders
=begin
  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end
=end

  def self.psearch(search_term)
    Product.where("name ilike ?", "%#{search_term}%")
  end
end
