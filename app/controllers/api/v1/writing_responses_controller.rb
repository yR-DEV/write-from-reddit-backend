class Api::V1::WritingResponsesController < ApplicationController

    def index 
        @responses = WritingResponse.all 
        render json: @responses
    end 
    
    def show 
        find_response()
    end 

    def new 
        @response = WritingResponse.new
    end

    def create 
        @response = WritingResponse.create(response_params)
    end 

    def destroy 
        @response = WritingResponse.find([params[:id]])
        @response[0].destroy
        render json: {status: :ok}, status: :ok
    end 

    def update 
        @response = WritingResponse.find(params[:id])
        @response.update(response_params)
    end     

    private

    def response_params 
        params.permit(:fiction_response, :writer_id, :writing_prompt_id)
    end

    def find_response 
        @response = WritingResponse.find(params[:id])
    end 
end
