class User < ApplicationRecord
  include Clearance::User
  has_many :authentications, dependent: :destroy
  has_many :listings

  def self.create_with_auth_and_hash(authentication, auth_hash)
    user = self.create!(
      name: auth_hash["name"],
      email: auth_hash["extra"]["raw_info"]["email"]
    )

    user.authentications << authentication
    return user
  end

  def fb_token
    x = self.authentications.find_by(provider: 'facebook')
    return x.token unless x.nil?
  end
end
