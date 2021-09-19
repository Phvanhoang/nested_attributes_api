class NotificationsController < ApplicationController
    def index
        
    end

    def show
        AppearanceChannel.broadcast_to(
            User.first,
            title: 'New things!',
            body: 'All the news fit to print'
        )
        byebug
        Pusher.trigger('a-channel', 'event', :some => 'data')

        render :index
    end
end
