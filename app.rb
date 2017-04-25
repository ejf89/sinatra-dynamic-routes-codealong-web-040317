require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
      @user_name = params[:name]
      "Goodbye #{@user_name}"
  end

  get '/multiply/:num1/:num2' do
      first = params[:num1].split(":").last
      second = params[:num2].split(":").last
    #   binding.pry
      "#{first.to_i * second.to_i}"
  end



end
