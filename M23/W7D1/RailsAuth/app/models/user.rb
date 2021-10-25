class User < ApplicationRecord
    validates :username, :session_token, presence: true, uniqueness: true
    validates_presence_of :password_digest, message: 'Password can\'t be blank'  
    validates_presence_of :password, length: {minimum: 8, allow_nil: true},  
    before_validation :ensure_session_token
    attr_reader :password
    def self.find_by_credentials(username, password)
        @users = User.all 
        @users.each do |user|
            return user if (user.username == username)
        end
    end
    def self.generate_session_token#generate ss token in the library
        SecureRandom::urlsafe_base64(16)
    end
    def self.reset_session_token!#reset ss token to a new one
        self.session_token = User.generate_session_token
        self.save!  
    end
    def self.ensure_session_token#ensure asign a session_token for user
        self.session_token ||= User.generate_session_token
    end
    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end



end
