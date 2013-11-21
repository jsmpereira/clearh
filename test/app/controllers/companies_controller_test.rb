require File.expand_path(File.dirname(__FILE__) + '/../../test_config.rb')

describe "CompaniesController" do
  before do
  	@company = Company.new name: 'Acme', address: 'Acme Street', city: 'Coimbra', country: 'PT'
  	@company.save
  	@existing_company = Company.find(@company)
  end

  describe "#index" do
  	it "should load the index" do
  		get '/companies'
	  	assert_equal last_response.status, 200
  	end
  end

  describe "#create" do

  	it "should return 201 Created for valid Company" do
  		post '/companies', company: @company.attributes
  		assert_equal last_response.status, 201
  	end

  	it "should return the created Company" do
  		post '/companies', company: @company.attributes
  		assert_equal last_response.body, @company.to_json
  	end

  	it "should return 400 Bad request for invalid Company" do
  		@company.name = ''
  		post '/companies', company: @company.attributes

  		assert_equal last_response.status, 400
  	end
  end

  describe "#show" do
  	it "should return the Company" do
  		get "/companies/#{@existing_company.id}"
  		assert_equal last_response.body, @existing_company.to_json
  	end
  end

  describe "#update" do
  	it "should update the Company and return it" do
  		@existing_company.name = 'Acme Inc'
  		put "/companies/#{@existing_company.id}", company: @existing_company.attributes
  		assert_equal JSON.parse(last_response.body)['name'], 'Acme Inc'
  	end
  end

end
