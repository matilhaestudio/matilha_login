require 'rails_helper'

RSpec.describe MatilhaLogin do
  it 'configure facebook omniauth for Devise' do
    # force nil
    Devise.omniauth_configs[:facebook] = nil

    MatilhaLogin.setup do |config|
      config.facebook_app_id = "APP_ID"
      config.facebook_app_secret = "APP_SECRET"
    end

    expect(Devise.omniauth_configs[:facebook]).not_to be_nil
  end
end