require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let(:email) { random_email }
  let(:password) { random_string }

  describe "POST #create" do
    it "creates the user record" do
      post :create, user: { email: email, password: password, password_confirmation: password }
      expect(User.find_by(email: email)).to_not be_nil
    end
  end

  describe "DELETE #user" do
    let(:user) { User.create(email: email, password: password, password_confirmation: password) }

    it "deletes the user" do
      delete :destroy, id: user.id
      expect(User.find_by(email: email)).to be_nil
    end
  end
end
