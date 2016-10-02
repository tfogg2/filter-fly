class Collection < Refinement
	has_many :filters

	validates :title, presence: true, uniqueness: true
	validates :tag, presence: true

end
