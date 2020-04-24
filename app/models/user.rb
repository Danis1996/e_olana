class User < ApplicationRecord
	has_many :declars, dependent: :destroy
end
