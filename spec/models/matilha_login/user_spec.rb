require 'rails_helper'

module MatilhaLogin
  RSpec.describe User, :type => :model do
    it "finds for oauth" do
      create :identity

      json = '{
        "uid": "1342113245845288",
        "provider": "facebook",
        "info": {
          "email": "teste@teste.com.br"
        },
        "extra": {
          "raw_info": {
            "name": "Testador de Apps"
          }
        }
      }'

      auth = JSON.parse json, object_class: OpenStruct

      user = User.find_for_oauth(auth)

      expect(user).not_to be_nil
    end
  end
end
