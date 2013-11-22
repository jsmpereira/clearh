class Company < ActiveRecord::Base
	
	has_many :occupations
	has_many :directors, through: :occupations, source: :person, conditions: ['occupations.title = ?', 'Director']
	has_many :owners, through: :occupations, source: :person, conditions: ['occupations.title = ?', 'Owner']

	validates :name, :address, :city, :country, presence: true
	validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, allow_blank: true
	validates_format_of :phone_number, :with => /^9\d{8}$/i, allow_blank: true

	def as_json(options={})
		super(:except => [:created_at, :updated_at])
	end
end
