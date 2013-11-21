require File.expand_path(File.dirname(__FILE__) + '/../test_config.rb')

describe "Company Model" do

  before do
    @company = Company.new name: 'Acme', address: 'Acme Street', city: 'Coimbra', country: 'PT',
                           email: 'admin@acme.com', phone_number: '912345678'
  end

  it 'should not have blank Name' do
  	@company.name = ''
  	assert !@company.save
  end

  it 'should not have blank Address' do
  	@company.address = ''
  	assert !@company.save
  end

  it 'should not have blank City' do
  	@company.city = ''
  	assert !@company.save
  end

  it 'should not have blank Country' do
  	@company.country = ''
  	assert !@company.save
  end

  describe 'Email Address' do
  	
  	it 'is valid' do
	  	%w[admin.first@acme.com boss@acme.com].each do |email|
	  		@company.email = email
	  		assert @company.valid?
	  	end
  	end

  	it 'is not valid' do
  		%w[adminacme.com boss@acme root,acme.com].each do |email|
	  		@company.email = email
	  		assert !@company.valid?
	  	end
  	end
  end

  describe 'Phone Number' do

  	it 'is valid' do
  		%w[932345678 923456789].each do |number|
  			@company.phone_number = number
  			assert @company.valid?
  		end
  	end

  	it 'is not valid' do
  		%w[2135 812345678 abcdr].each do |number|
  			@company.phone_number = number
  			assert !@company.valid?
  		end
  	end
  end
end