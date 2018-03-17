use Rack::Auth::Basic, "Restricted Area" do |username, password|
        username == 'admin' && password == '123456' || 
		username == 'sheng' && password == '4321' ||
		username == 'sunqing' && password == 'abcd'
end
require 'rack/jekyll'
run Rack::Jekyll.new