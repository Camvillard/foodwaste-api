# frozen_string_literal: true

module Api
  module V1
    # comment to indicate what is this controller
    class LeftoversController < ApplicationController
      before_action :set_leftover, only: %i[show update destroy]

      def index
        @leftovers = Leftover.all
        render json: @leftovers
      end

      def show
        render json: @leftover
      end

      def new
        @leftover = Leftover.new
        render json: @leftover
      end

      def create
        @leftover = Leftover.new(leftover_params)
        if @leftover.save
          render json: @leftover, status: :ok
        else
          render json: @leftover, status: :unprocessable_entity
        end
      end

      def edit
        render json: @leftover
      end

      def update
        @leftover.update(leftover_params)
        if @leftover.save
          render json: @leftover, status: :ok
        else
          render json: @leftover, status: :unprocessable_entity
        end
      end

      def destroy
        @leftover.destroy
        render json: @leftover, status: :no_content
      end

      private

      def set_leftover
        @leftover = Leftover.find(params[:id])
      end

      def leftover_params
        params.require(:leftover).permit!
      end
    end
  end
end
