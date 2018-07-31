class Pacient < ApplicationRecord
	before_save do
  	  self.whatDrinked.gsub!(/[\[\]\"]/, "") if attribute_present?("whatDrinked")
  	  self.whatSmoked.gsub!(/[\[\]\"]/, "") if attribute_present?("whatSmoked")
  	  self.whoHadCancer.gsub!(/[\[\]\"]/, "") if attribute_present?("whoHadCancer")
	end

	has_one_attached :video
	validates :video, :presence => true
end
