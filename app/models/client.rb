class Client < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |client|
      client.provider = auth.provider
      client.uid = auth.uid
      client.name = auth.info.name
      client.oauth_token = auth.credentials.token
      client.oauth_expires_at = Time.at(auth.credentials.expires_at)
      client.save!
    end
  end
end