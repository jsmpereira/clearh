Clearhaus::App.controllers :companies, provides: :json do

  before do
    headers 'Access-Control-Allow-Origin' => '*', 
            'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST', 'PUT'],
            'Access-Control-Allow-Headers' => 'Content-Type'
  end

  options '/companies' do
    200
  end

  get :index do
    @companies = Company.all.to_json
  end

  post :create, map: '/companies' do
    @company = Company.new(params[:company])

    if @company.save
      halt 201, @company.to_json
    else
      halt 400, { status: 400, body: @company.errors.messages }.to_json
    end
  end

  get :show, map: '/companies/:id' do
    @company = Company.find(params[:id]).to_json
  end

  put :update, map: '/companies/:id' do
    @company = Company.find(params[:id])

    if @company.update_attributes(params[:company])
      halt 201, @company.to_json
    else
      halt 400, @company.errors.messages.to_json
    end
  end

  get :passports, map: '/companies/:id/passports/:passport_id' do
    content_type 'application/octet-stream'

    begin
      passport = Passport.find(params[:passport_id])
      halt 200, passport.pdf
    rescue ActiveRecord::RecordNotFound => e
      halt 404
    end
  end

  post :passports, map: '/companies/:id/passports' do
    # This should go on S3 or something. Blobs in db, yuck!
    @passport = Passport.new(person_id: params[:passport][:person_id], pdf: params[:passport][:pdf][:tempfile].read)
    
    if @passport.save
      halt 201, 'Passport uploaded.'
    else
      halt 400, @passport.errors.messages.to_json
    end
  end
end