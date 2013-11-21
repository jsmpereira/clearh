class Company < ActiveRecord::Base
	
	validates :name, :address, :city, :country, presence: true
	validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i
	validates_format_of :phone_number, :with => /^9\d{8}$/i
end
