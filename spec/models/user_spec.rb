require 'rails_helper'

RSpec.describe User, type: :model do

  describe ".authenticate" do
    let(:good_password) { random_string }
    let(:user) { User.create(email: random_email, password: good_password, password_confirmation: good_password) }

    subject { User.authenticate(user.email, password) }

    context "when good password" do
      let(:password) { good_password }

      it "should return the user" do
        expect(subject).to eq(user)
      end
    end

    context "when bad password" do
      let(:password) { random_string }

      it "should be false" do
        expect(subject).to be_falsey
      end
    end
  end

end
