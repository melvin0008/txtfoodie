require 'sinatra'
require 'twilio-ruby'

configure :development do
  require 'sinatra/reloader'
end

Twilio.configure do |config|
  config.account_sid = ENV['ACCOUNT_SID']
  config.auth_token = ENV['AUTH_TOKEN']
end

get '/receive' do
	@client= Twilio::REST::Client.new
	message=params[:Body].split(' ')
	if message.length ==1
		foodquery=message[0]
		@client.messages.create(
			from:ENV['MY_NUMBER'],
			to:"+919049733143",
			body:"Yalla"
			)
	end
end
