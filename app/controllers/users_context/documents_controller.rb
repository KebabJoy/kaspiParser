# frozen_string_literal: true

module UsersContext
  class DocumentsController < ApplicationController
    def show
      render json: {success:true, url: rails_blob_path(current_user.price_xml)}, status: 200
    end

    def update
      current_user.price_xml.attach(permitted_params[:document])

      render json: current_user.price_xml
    end

    private

    def permitted_params
      params.require(:document)
      params.permit(:document)
    end
  end
end
