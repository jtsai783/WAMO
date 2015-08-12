module Api
	class MovesController < ApplicationController
		def show
			charname = params[:id]
			@moves = Move.where(char: charname)
			render json: @moves
		end
	end
end