# frozen_string_literal: true

module Api
  module V1
    # comment to indicate what is this controller
    class ShopsController < ApplicationController
      before_action :set_shop, only: %i[show update destroy]

      def index
        @shops = Shop.all
        render json: @shops
      end

      def show
        render json: @shop
      end

      def new
        @shop = Shop.new
        render json: @shop
      end

      def create
        @shop = Shop.new(shop_params)
        if @shop.save
          render json: @shop, status: :ok
        else
          render json: @shop, status: :unprocessable_entity
        end
      end

      def edit
        render json: @shop
      end

      def update
        @shop.update(shop_params)
        if @shop.save
          render json: @shop, status: :ok
        else
          render json: @shop, status: :unprocessable_entity
        end
      end

      def destroy
        @shop.destroy
        render json: @shop, status: :no_content
      end

      private

      def set_shop
        @shop = Shop.find(params[:id])
      end

      def shop_params
        params.require(:shop).permit!
      end
    end
  end
end
