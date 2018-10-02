require 'rails_helper'
describe Product do
  context "when the product has comments" do
    let(:product) {Product.create!(name:"Flexseed flour")}
    let(:user) {User.create!(email:"testdesh@gmail.com", password:"123456")}
    before do
      product.comments.create!(rating: 1, user: user, body: "Awful product!")
      product.comments.create!(rating: 3, user: user, body: "Ok product!")
      product.comments.create!(rating: 5, user: user, body: "Great product!")
    end

    it "returns the average rating of all comments" do
      expect(comments.average_rating).to_eq 3
    end
  end
end
