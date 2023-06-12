require 'sinatra'
require 'json'
require './models/drink'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  # Root route
  get '/' do
    { message: 'Good luck with your project!' }
  end

  # Get all drinks
  get '/drinks' do
    drinks = Drink.all
    drinks.to_json
  end

  # Get a specific drink by ID
  get '/drinks/:id' do
    drink = Drink.find_by(id: params[:id])

    if drink
      drink.to_json
    else
      status 404
      { error: 'Drink not found.' }
    end
  end

  # Create a new drink
  post '/drinks' do
    drink = Drink.new(params[:drink])

    if drink.save
      status 201
      drink.to_json
    else
      status 400
      { error: 'Failed to create the drink.' }
    end
  end

  # Update a drink
  put '/drinks/:id' do
    drink = Drink.find_by(id: params[:id])

    if drink
      if drink.update(params[:drink])
        drink.to_json
      else
        status 400
        { error: 'Failed to update the drink.' }
      end
    else
      status 404
      { error: 'Drink not found.' }
    end
  end

  # Delete a drink
  delete '/drinks/:id' do
    drink = Drink.find_by(id: params[:id])

    if drink
      if drink.destroy
        status 204
      else
        status 400
        { error: 'Failed to delete the drink.' }
      end
    else
      status 404
      { error: 'Drink not found.' }
    end
  end
end
