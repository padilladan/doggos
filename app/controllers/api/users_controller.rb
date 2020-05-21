class Api::UsersController < ApplicationController
    def welcome
        render "users.json.jbuilder"
    end

    def create
        @user: User.new(
            
        )

    end
end
