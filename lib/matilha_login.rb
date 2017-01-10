require 'devise'
require "omniauth-facebook"
require "matilha_login/engine"

module MatilhaLogin
	mattr_accessor :facebook_app_id
	mattr_accessor :facebook_app_secret

	def self.facebook_app_id=(app_id)
		@@facebook_app_id = app_id
		config_omniauth
	end

	def self.facebook_app_secret=(app_secret)
		@@facebook_app_secret = app_secret
		config_omniauth
	end

	def self.setup
		yield self
	end

	private
		def self.config_omniauth
			return if MatilhaLogin.facebook_app_id.blank? or MatilhaLogin.facebook_app_secret.nil?
			Devise.setup do |config|
				# setting up facebook omniauth configuration
  			config.omniauth :facebook, MatilhaLogin.facebook_app_id, MatilhaLogin.facebook_app_secret
			end
		end
end
