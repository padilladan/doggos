class Api::UsersController < ApplicationController
    def welcome
        render "users.json.jbuilder"
    end
end
