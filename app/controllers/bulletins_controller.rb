class BulletinsController < ApplicationController 

    def index  
      bulletins = Bulletin.all 
      render json: BulletinSerializer.new(bulletins)
    end  

    def create 
      bulletin = Bulletin.new(bulletin_params) 

      if bulletin.save 
        render json: BulletinSerializer.new(bulletin)
      else 
        render json: { message: 'Bulletin not found' } 
      end
    end 

    def destroy 
      bulletin = Bulletin.find(params[:id])
      bulletin.destroy 
    end
end
