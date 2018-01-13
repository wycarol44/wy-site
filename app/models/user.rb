class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:google_oauth2]
         
  def self.from_omniauth(access_token)
    
    where(email: access_token.info.email).first_or_create do |user|
      user.email = access_token.info.email
      user.password = Devise.friendly_token[0,20]
      #user.name = access_token.info.name   # assuming the user model has a name
    end

  end
        
end
