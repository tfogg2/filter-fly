class Filter < Refinement
	belongs_to :collection

	validates :name, presence: true
	validates :tag, presence: true
	
end
