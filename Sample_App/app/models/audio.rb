class Audio < ApplicationRecord
    
    before_save {self.path = path.downcase}
	validates :path, presence: true 
end
