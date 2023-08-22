class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show update destroy ]

  def index
    message = Message.order('RANDOM()').first
    render json: message
  end
end
