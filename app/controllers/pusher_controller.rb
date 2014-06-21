Pusher.url = "http://fe4a15e1a9a1df8517e5:5270dedf1c0cd9e86dcd@api.pusherapp.com/apps/78862"
Pusher.logger = Rails.logger

class PusherController < ApplicationController
  def create
    Pusher["channel"].trigger("event", params[:text]+"<br />")
    render :text => "success"
  end
end
