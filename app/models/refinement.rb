class Refinement < ActiveRecord::Base
	
	validates :tag, presence: true

	def self.search(search)
		if search 
		  	where("name LIKE ?", "%#{search}%")
		  	where("title LIKE ?", "%#{search}%")
		 else
		 	scoped 
		 end


	end

=begin
	TYPES = %w[filter collection]
	find(:all, :conditions => ['tag LIKE ?', "%#{search}%"])

	else    find(:all)
=end


  


end
