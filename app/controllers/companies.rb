Clearhaus::App.controllers :companies, :provides => :json do

  get :index do
    @companies = Company.all.to_json
  end

  post :create do
    @company = Company.new(params[:company])

    if @company.save
      halt 201, @company.to_json
    else
      halt 400, @company.errors.messages.to_json
    end
  end

  get :show, :with => :id do
    @company = Company.find(params[:id]).to_json
  end

  post :update, :with => :id do
    @company = Company.find(params[:id])

    if @company.update_attributes(params[:company])
      halt 201, @company.to_json
    else
      halt 400, @company.errors.messages.to_json
    end
  end
end