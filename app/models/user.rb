class User < ApplicationRecord
    before_create :create_remember_token
    has_secure_password
    validates :password, length: {minimum:6, maximum:18}

end
