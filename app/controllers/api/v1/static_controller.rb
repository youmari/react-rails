class Api::V1::StaticController < ApplicationController
  def index
    @message = Message.all.sample
    render json: @message
  end
end
