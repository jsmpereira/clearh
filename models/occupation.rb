class Occupation < ActiveRecord::Base
	belongs_to :person
	belongs_to :company
end
