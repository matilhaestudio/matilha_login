require 'rails_helper'

module MatilhaLogin
  RSpec.describe Identity, :type => :model do
    it "finds for oauth" do
      identity = create(:id_facebook)

      json = "{
        \"uid\":      \"#{identity.uid}\",
        \"provider\": \"#{identity.provider}\"
      }"

      auth = JSON.parse json, object_class: OpenStruct

      expect(Identity.find_for_oauth(auth)).to eq(identity)
    end
  end
end
