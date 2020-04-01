class SessionsController < ApplicationController

    def create
        user = User.find_by(email: params["users"]["email"]).try(:authenticate, params["user"]["password"])
    end
    
end