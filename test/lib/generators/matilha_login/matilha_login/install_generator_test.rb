require 'test_helper'
require 'generators/matilha_login/install/install_generator'

module MatilhaLogin
  class MatilhaLogin::InstallGeneratorTest < Rails::Generators::TestCase
    tests MatilhaLogin::InstallGenerator
    destination Rails.root.join('tmp/generators')
    setup :prepare_destination

    # test "generator runs without errors" do
    #   assert_nothing_raised do
    #     run_generator ["arguments"]
    #   end
    # end
  end
end
