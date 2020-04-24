class Typa < ApplicationRecord
	has_many :declars, dependent: :destroy
	has_many :fichiers, dependent: :destroy
end
