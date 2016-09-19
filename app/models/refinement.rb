class Refinement < ActiveRecord::Base
	validates :name, presence: true
	validates :tag, presence: true
	validates :title, presence: true

	TYPES = %w[filter collection]

  
  


end
