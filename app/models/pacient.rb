class Pacient < ApplicationRecord
	before_save do
  	  self.whatDrinked.gsub!(/[\[\]\"]/, "") if attribute_present?("whatDrinked")
	end
	has_one_attached :video
	validates :video, :presence => true
end
