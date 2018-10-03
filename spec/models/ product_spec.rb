require 'rails_helper'


RSpec.describe Product, type::model do

  #describe "#average_rating" do # - the '#' signifies that we are testing an instance method - describe the method you will be testing (which belongs to the Class)
  context "when the product has comments" do
    before do
    @product = Product.create!(name:"Flexseed flour")
    @user = User.create!(email:"testdesh@gmail.com", password:"123456")

      @product.comments.create!(rating: 1, user: user, body: "Awful product!")
      @product.comments.create!(rating: 3, user: user, body: "Ok product!")
      @product.comments.create!(rating: 5, user: user, body: "Great product!")
    end

    it "returns the average rating of all comments" do
      expect(@product.average_rating).to eq 3
    end
  end
end
