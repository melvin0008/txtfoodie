require 'sinatra'
require 'twilio-ruby'




get '/receive' do
	 txtmessage=params['txtweb-message']
	 mobileno=params['txtweb-mobile']
	 erb :txtfoodie, :locals => { :txtmessage => txtmessage, :mobileno=> mobileno}
	# erb :txtfoodie , :locals => { :txtmessage => txtmessage}
	# return "#{txtmessage}"
end

#receive?txtweb-message=BLAH&txtweb-id=b9e1036b-7e01-4b93-adaa-7e20010577a3&txtweb-verifyid=73ef54da5debfa282546d4e089734b542709228013666553d78e8b19c844826dc1fee7ad659f22fce7d6a37898b136aa1c1bf1b112326d940d9dd12fee3b771dd99bb039c451b5160eb3c0d6f59ccac4fd00423f7f021080354bb9ef46f8241052c38c265c393a6b9cebf37a1b79ae4b&txtweb-mobile=c5d6e691-665f-4a26-8b14-c3b80eb76c97&txtweb-aggid=21000&txtweb-protocol=2100&txtweb-operator=UNKNOWN_OPERATOR&txtweb-circle=DEFAULT_CIRCLE&txtweb-user-name=&txtweb-user-id=
