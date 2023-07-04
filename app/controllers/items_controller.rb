class ItemsController < ApplicationController
    def index
      items = Item.includes(:user).all
      render json: items.to_json(include: :user)
    end
end
  