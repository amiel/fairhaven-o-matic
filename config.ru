require 'pathname'
ROOT = Pathname.new(__FILE__).dirname
require ROOT.join('app.rb').to_s

run Sinatra::Application
