class SessionsController <ApplicationController
    def index
    end

    def new
    end

    def create
        if params[:name].empty? || params[:name].nil?
            redirect_to(controller: 'sessions', action: 'new')
        else
            session[:name] = params[:name]

            redirect_to(controller: 'sessions', action: 'index')
        end
    end

    def destroy
        if current_user
            session.delete :name

            redirect_to 'index'
        end
    end
end