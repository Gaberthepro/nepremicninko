class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  devise :omniauthable, omniauth_providers: %i[facebook]
  has_many :nepremicnines

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.from_omniauth(auth)
    name_split = auth.info.name.split(" ")
    user = User.where(email: auth.info.email).first
    user ||= User.create!(provider: auth.provider, uid: auth.uid, priimek: name_split[0], ime: name_split[1], email: auth.info.email, password: Devise.friendly_token[0, 20])
      user
  end
end
