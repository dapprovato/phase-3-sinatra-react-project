class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/villagers' do
    villagers = Villager.all
    villagers.to_json
  end

  get '/villagers/:id' do
    villager = Villager.find(params[:id])
    villager.to_json
  end

  post '/villagers' do
    villager = Villager.create(
      name: params[:name],
      photo: params[:photo],
      village_id: params[:village_id]
    )
    villager.to_json
  end

  patch '/villagers/:id' do
    villager = Villager.find(params[:id])
    villager.update(
      village_id: params[:village_id]
    )
    villager.to_json
  end

  get '/villages' do
    villages = Village.all
    villages.to_json
  end

end
