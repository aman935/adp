class Editor < ApplicationRecord

	validates :song, presence: true, uniqueness: true 
end
