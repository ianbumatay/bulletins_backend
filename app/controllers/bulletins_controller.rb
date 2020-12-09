class BulletinsController < ApplicationController 

    def index  
      bulletins = Bulletin.all 
      render json: bulletins
    end 

    def create 
      bulletin = Bulletin.new(bulletin_params) 

      if bulletin.save 
        render json: bulletin 
      end 
    end 

    def destroy 
      bulletin = Bulletin.find(params[:id])
      bulletin.destroy 
    end
end
