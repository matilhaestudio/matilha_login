require 'rails_helper'

module MatilhaLogin
  RSpec.describe Identity, :type => :model do
    it "finds for oauth" do
      identity = create(:identity)

      json = '{
        "uid": "1342113245845288",
        "provider": "facebook"
      }'

      auth = JSON.parse json, object_class: OpenStruct

      expect(Identity.find_for_oauth(auth)).to eq(identity)
    end
  end
end
