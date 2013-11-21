class Person < ActiveRecord::Base
	has_many :occupations
	has_many :companies, through: :occupations
end
