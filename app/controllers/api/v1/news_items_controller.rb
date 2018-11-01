module Api
  module V1
    class NewsItemsController < Api::V1::ApplicationController

    	  def index
        	render json: decorated_news_items
      	end

      	private

      	def decorated_news_items
          NewsItem.all.map {|news_item| NewsItemsDecorator.new(news_item) }
        end

    end
  end
end