class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension

  get '/cars' do
    @cars = Car.all
    @cars = @cars.where(brand: params[:brand]) if params[:brand]

    json @cars
  end

  get '/cars/:id' do
    @car = Car.find(params[:id])

    json @car
  end

  post '/cars' do
    @car = Car.new(params.slice(:brand, :model, :year, :price))

    if @car.save
      json @car
    else
      json @car.errors, status: 422
    end
  end

  put '/cars/:id' do
    @car = Car.find(params[:id])

    if @car.update_attributes(params.slice(:price))
      json @car
    else
      json @car.errors, status: 422
    end
  end

  delete '/cars/:id' do
    @car = Car.find(params[:id])
    @car.destroy

    json '', status: 204
  end
end
