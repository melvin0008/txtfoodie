require 'sinatra'
require 'twilio-ruby'

configure :development do
  require 'sinatra/reloader'
end



get '/receive/:txtweb-message' do
	txtmessage=params[:txtweb-message]
	# mobileno=params[:txtweb-message]
	# erb :txtfoodie, :locals => { :txtmessage => txtmessage, :mobileno=> mobileno}
	erb :txtfoodie , :locals => { :txtmessage => txtmessage}
end
