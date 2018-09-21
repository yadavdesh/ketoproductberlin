class Product < ApplicationRecord
  has_many :orders

  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end

  def self.psearch(search_term)
    Product.where("name ilike ?", "%#{search_term}%")
  end

  def self.pid(p_id)
    Product.where("p_id ?", p_id)
  end

end
