class ApplicationController < ActionController::Base
    helper_method :current_user

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        else
            @current_user = "Guest"
        end

        return @current_user
    end

    def homepage
        @profiles = []
        
        if User.all.length < 4
            User.all.each{|user| @profiles << user}
        else
            while @profiles.length < 4 do
                user = User.all.sample
                if !@profiles.include?(user)
                    @profiles << user
                end
            end
        end
    end
end
