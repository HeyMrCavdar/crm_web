require_relative 'contact'
require 'sinatra'

get '/' do
	@crm_app_name = "Customer Relationship Management for Dummies"
	erb :index
end

get '/contacts' do
	erb :contacts
end

get '/contacts/new' do
	erb :new_contact
end

get '/contacts/delete' do
	erb :delete_contact
end


post '/contacts' do
  Contact.create(params[:first_name], params[:last_name], params[:email], params[:note])
  redirect to('/contacts')
end