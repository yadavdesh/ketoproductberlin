
require 'rails_helper'


describe Product do

  #describe "#average_rating" do # - the '#' signifies that we are testing an instance method - describe the method you will be testing (which belongs to the Class)
  context "when the product has comments" do

    let(:product){Product.create!(name:"Flexseed flour", url:"https://www.bobsredmill.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/1/2/1235s164_flaxseedmeal_f_hr.jpg", price:5.50)}
    let(:user){User.create!(email:"testdesh@gmail.com", password:"123456")}

    before do
      product.comments.create!(rating: 1, user: user, body: "Awful product!")
      product.comments.create!(rating: 3, user: user, body: "Ok product!")
      product.comments.create!(rating: 5, user: user, body: "Great product!")
    end

    it "returns the highest rating of all comments" do
      expect(product.highest_rating_comment.rating).to eq 5
    end

    it "returns the lowest rating of all comments" do
      expect(product.lowest_rating_comment.rating).to eq 1
    end

    it "returns the average rating of all comments" do
      expect(Product.average_rating).to eq 3
    end
  end
end
