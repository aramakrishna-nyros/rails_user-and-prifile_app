class Profile < ActiveRecord::Base
	belongs_to :user
	# attr_accessible :user_id, :name, :gender, :dob, :profession, :mobile_no
	validates :name, :presence => 'true'
  	validates :gender, :presence => 'true'					
  	validates :dob, :presence => 'true'
  	validates :profession, :presence => 'true'
  	validates :mobile_no, :presence => 'true' , :numericality => {:only_integer => true}
end
