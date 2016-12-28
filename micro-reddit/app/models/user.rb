class User < ApplicationRecord
	validates(:name, presence: true)
	validates(:post, length: {maximum: 250})

	has_many :posts
end
