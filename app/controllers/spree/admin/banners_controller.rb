module Spree
  module Admin
    class BannersController < ResourceController
      

      def index
        respond_with(@collection) do |format|
          format.html
          format.json { render :json => json_data }
        end
      end
      
      def reorder
        params[:banner].each_with_index do |id, index|
          Spree::Banner.update_all(['position=?', index+1], ['id=?', id])
        end
      end
      
    end
  end
end