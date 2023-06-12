require 'sinatra'
require 'json'
require_relative '../models/drink'
require_relative '../models/rating'
require_relative '../models/user'

class ApplicationController < Sinatra::Base
  set :port, 4000
  set :default_content_type, 'application/json'

  # Root route
  get '/' do
    { message: 'Good luck with your project!' }.to_json
  end

  # Users
  get '/users' do
    users = User.all
    users.to_json
  end

  get '/users/:id' do
    user = find_user(params[:id])

    if user
      user.to_json
    else
      status 404
      { error: 'User not found.' }.to_json
    end
  end

  post '/users' do
    user = User.new(json_params)

    if user.save
      status 201
      user.to_json
    else
      status 400
      { error: 'Failed to create the user.' }.to_json
    end
  end

  put '/users/:id' do
    user = find_user(params[:id])

    if user
      if user.update(json_params)
        user.to_json
      else
        status 400
        { error: 'Failed to update the user.' }.to_json
      end
    else
      status 404
      { error: 'User not found.' }.to_json
    end
  end

  delete '/users/:id' do
    user = find_user(params[:id])

    if user
      if user.destroy
        status 204
      else
        status 400
        { error: 'Failed to delete the user.' }.to_json
      end
    else
      status 404
      { error: 'User not found.' }.to_json
    end
  end

  # Drinks
  get '/drinks' do
    drinks = Drink.all
    drinks.to_json
  end

  get '/drinks/:id' do
    drink = find_drink(params[:id])

    if drink
      drink.to_json
    else
      status 404
      { error: 'Drink not found.' }.to_json
    end
  end

  post '/drinks' do
    drink = Drink.new(json_params)

    if drink.save
      status 201
      drink.to_json
    else
      status 400
      { error: 'Failed to create the drink.' }.to_json
    end
  end

  put '/drinks/:id' do
    drink = find_drink(params[:id])

    if drink
      if drink.update(json_params)
        drink.to_json
      else
        status 400
        { error: 'Failed to update the drink.' }.to_json
      end
    else
      status 404
      { error: 'Drink not found.' }.to_json
    end
  end

  delete '/drinks/:id' do
    drink = find_drink(params[:id])

    if drink
      if drink.destroy
        status 204
      else
        status 400
        { error: 'Failed to delete the drink.' }.to_json
      end
    else
      status 404
      { error: 'Drink not found.' }.to_json
    end
  end

  # Ratings
  get '/ratings' do
    ratings = Rating.all
    ratings.to_json
  end

  get '/ratings/:id' do
    rating = find_rating(params[:id])

    if rating
      rating.to_json
    else
      status 404
      { error: 'Rating not found.' }.to_json
    end
  end

  post '/ratings' do
    rating = Rating.new(json_params)

    if rating.save
      status 201
      rating.to_json
    else
      status 400
      { error: 'Failed to create the rating.' }.to_json
    end
  end

  put '/ratings/:id' do
    rating = find_rating(params[:id])

    if rating
      if rating.update(json_params)
        rating.to_json
      else
        status 400
        { error: 'Failed to update the rating.' }.to_json
      end
    else
      status 404
      { error: 'Rating not found.' }.to_json
    end
  end

  delete '/ratings/:id' do
    rating = find_rating(params[:id])

    if rating
      if rating.destroy
        status 204
      else
        status 400
        { error: 'Failed to delete the rating.' }.to_json
      end
    else
      status 404
      { error: 'Rating not found.' }.to_json
    end
  end

  private

  def find_user(id)
    User.find_by(id: id)
  end

  def find_drink(id)
    Drink.find_by(id: id)
  end

  def find_rating(id)
    Rating.find_by(id: id)
  end

  def json_params
    JSON.parse(request.body.read)
  end
end
