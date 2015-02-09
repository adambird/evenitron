require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "POST #create" do
    let(:email) { random_email }
    let(:password) { random_string }

    it "creates the user record" do
      post :create, user: { email: email, password: password, password_confirmation: password }
      expect(User.find_by(email: email)).to_not be_nil
    end
  end

end
