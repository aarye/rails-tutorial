class User < ActiveRecord::Base
    before_save { self.email = email.downcase }
    #before_save { email.downcase! } #alternate implementation of before_save (perm change to email)
    validates:name, presence: true, length: { maximum: 50 } #length is a hash
      VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i 
        #more complex implementation (see Rubular)
    validates:email, presence: true, length: { maximum: 255 },
                     format: { with: VALID_EMAIL_REGEX },
                     uniqueness: { case_sensitive: false } #change from true to case_sensitive hash
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
