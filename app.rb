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
	#@client= Twilio::REST::Client.new
	message=params[:Body].split(' ')
	if message.length ==1
		foodquery=message[0]
		"""@client.messages.create(
			from:ENV['MY_NUMBER'],
			to:params[:From],
			body:'Yalla'
			)"""
		puts foodquery
	end
end

#curl -X POST https://api.twilio.com/2010-04-01/Accounts/AC7ce5e0e39730f8a683247bd5fcd50e29/Messages -d "To=+16179528889" -d "From=+15005550006" -d "Body=Hello" -u 'AC7ce5e0e39730f8a683247bd5fcd50e29:c2daecaf9d24322e41c1208006e41466'
