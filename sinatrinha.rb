class Sinatrinha < Sinatra::Application
  get '/' do
    "Hello World called in #{Time.now.strftime('%Y-%m-%d %H:%M:%S')}! =D"
  end
end
