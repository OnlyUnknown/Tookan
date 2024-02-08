class Api::V1::SupervisionsController < ApplicationController
  def index
    @supervision = Supervision.find(params[:id])l
    if @supervision
      render json: @supervision
    else
      render json: @supervision.errors.full_messages
    end
  end
end
