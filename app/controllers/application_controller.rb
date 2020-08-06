class ApplicationController < ActionController::API
    
    helpers do
        # mocked version of being logged in
        def current_user
            User.first
        end

        def logged_in?
            !!current_user
        end
    end

end
