class UsersController < ApplicationController
   get "/users" do
      erb :"users/index"
   end

   get '/users/:slug' do
      @user = User.find_by_slug(params[:slug])
      erb :'users/show'
   end
end
