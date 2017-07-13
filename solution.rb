require "sinatra"

get '/' do
	@browser = request.user_agent
	erb :index
end