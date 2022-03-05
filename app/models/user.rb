class User < ApplicationRecord
	validates(:name, presence: true, length: {minimum:2, maximum:25})
	validates(:email, presence: true, length: {minimum:5, maximum:244})
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates(:email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive:false})
	has_secure_password
	validates(:password, presence: true, length: {minimum:4}, allow_nil: true)
end
