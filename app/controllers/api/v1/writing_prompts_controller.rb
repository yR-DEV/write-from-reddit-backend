class Api::V1::WritingPromptsController < ApplicationController

    def index 
        @prompts = WritingPrompt.all 
        render json: @prompts
    end 

    

    private 

    def prompt_params 
        params.permit(:fiction_prompt)
    end 

    def find_prompt 
        @prompt = WritingPrompt.find(params[:id])
    end 
end
