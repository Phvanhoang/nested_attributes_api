class AppearanceChannel < ApplicationCable::Channel
  def subscribed
    stream_for User.first
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
