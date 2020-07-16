class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @message = Message.new
    # limit to only last 20 messages
    # defined in messages.rb
    @messages = Message.custom_display
  end

end
