class BulletinsController < ApplicationController 

    def index  
 
      render json: Bulletin.all.map { |bulletins| BulletinSerializer.new(bulletins) }
      #render json: Post.all.map {|post| PostSerializer.new(post)}
    end  

    def create 
      bulletin = Bulletin.new(bulletin_params) 

      if bulletin.save 
        render json: BulletinSerializer.new(bulletin)
      else 
        render json: { message: 'Bulletins not found' } 
      end
    end 

    def destroy 
      bulletin = Bulletin.find(params[:id])
      bulletin.destroy 
    end 

    private 

    def bulletin_params 
      params.require(:bulletin).permit(:title, :content) 
    end


end
