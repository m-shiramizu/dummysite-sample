class HomeController < ApplicationController

  def index
  end

  def show
    token = session[:access_token] 
    client = doorkeeper_oauth_client(nil,nil,ENV['DOORKEEPER_APP_PROVIDER_URL'])
    accesstoken = OAuth2::AccessToken.new(client,token)
    @userinfo = accesstoken.get('/api/v1/me.json').parsed
  end
end
