
class UsersController < ApplicationController
    # before_action :authenticate_user!
    def index 
        @users = User.all
        render json: @users
        # if current_user != nil   
        #     render json:  current_user.to_json( 
        #         include: [:ratings, :orders, :reviews, :favorites ])
            
        # else 
        #     render json:  User.all.to_json( 
        #         include: [:ratings, :orders, :reviews, :favorites ])
        # end
    end
   
    def show 
        @user = User.find_by(id: params[:id])
        render json: @user
        # jwt = request.headers[:token]
        # if jwt
        # id = decode(jwt)
        # current_user = User.find_by(id: id['user_id']) 
        # render json: current_user.to_json(status: :accepted,  include: [:ratings, :orders, :reviews, :favorites ])
        # else 
        #     render json: User.all.to_json(status: :accepted,  include: [:ratings, :orders, :reviews, :favorites ])
        # end
    end
    def new 
        @user = User.new
    end
    def create 
        @user = User.create(user_params)
       
        # @user = User.find_by(username: params[:username])
        # if @user && @user.authenticate(params[:password])
        #   token = encode({user_id: @user.id})
        #   render json: {
        #     authenticated: true,
        #     message: "You are logging in...",
        #     user: @user,
        #     token: token
        #   }, status: :accepted
        # render json: user
        
    end
    def update 
        @user = User.update(user_params)
        @user.save
    end
    def destroy 
        User.find_by(id: params[:id]).delete
    end

    private
    def user_params
        params.require(:user).permit(:first_name, :last_name, :role, :email, :username, :password )
    end
end
