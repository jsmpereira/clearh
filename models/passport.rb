class Passport < ActiveRecord::Base
	belongs_to :person

	validates :person_id, :pdf, presence: true
end
