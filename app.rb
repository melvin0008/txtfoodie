require 'sinatra'
require 'twilio-ruby'

configure :development do
  require 'sinatra/reloader'
end



get '/receive' do
	txtmessage=params[:txtweb-mobile]
	mobileno=params[:txtweb-message]
	erb :txtfoodie, :locals => { :txtmessage => txtmessage, :mobileno=> mobileno}
end
