class Product < ApplicationRecord
  has_many :orders
  has_many :comments

# method for search on dev
  def self.search(search_term)
    Product.where("name LIKE ?", "%#{search_term}%")
  end

# method for search on production
  def self.psearch(search_term)
    Product.where("name ilike ?", "%#{search_term}%")
  end

  def self.pid(p_id)
    Product.where("p_id ?", p_id)
  end

#method for ratings
  def highest_rating_comment
  comments.rating_desc.first
end

end
