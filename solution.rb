require "sinatra"
require "browser"
require "useragent"

get '/' do
	@browser = Browser.new(:ua => request.user_agent)
	ua = @browser.ua
	#@browser = ua[:ua]
	@browser = UserAgent.parse(ua[:ua])
	#puts @browser.name
	erb :index
end