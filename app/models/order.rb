class Order < ApplicationRecord
  #before_action :authenticate_user!
  belongs_to :product
  belongs_to :user

end
