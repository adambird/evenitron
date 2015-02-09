require 'rails_helper'

RSpec.describe User, type: :model do

  describe ".authenticate" do
    let(:user) { Users(:user_1) }
    let(:good_password) { 'password' }
    let(:bad_password) { random_string }
  end

end
