class Audio < ApplicationRecord
  acts_as_votable
  before_save {self.path = path.downcase}
  validates :path, presence: true 
end
