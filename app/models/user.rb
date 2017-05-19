class User < ActiveRecord::Base
has_secure_password

has_many :questions
# def password=(password)
#   self.password_digest = BCrypt::Password.create(password)
# end
#
# def verify_password(password)
#   BCrypt::Password.new(self.password_digest) == password
# end


end
