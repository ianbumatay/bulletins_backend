class BulletinsController < ApplicationController 

    def index  
      bulletins = Bulletin.all 
      render json: bulletins
    end
end
