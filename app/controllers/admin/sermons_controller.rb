module Admin
  class SermonsController < Admin::BaseController
    before_action :set_sermon, only: [:show, :edit, :update, :destroy]

    def new
      @sermon = Sermon.new
    end

    def create
      @sermon = Sermon.new(sermon_params)
      if @sermon.save
        flash[:notice] = 'Sermon has been created'
        redirect_to admin_sermons_path
      else 
        render :new
      end
    end

    def edit
      @sermon = Sermon.find(params[:id])
    end

    def update
      @sermon = Sermon.find(params[:id])
      if @sermon.update(sermon_params)
        flash[:notice] = 'Sermon has been updated'
        redirect_to admin_sermons_path
      else
        render :edit
      end
    end

    def destroy
      @sermon.destroy
        redirect_to admin_sermons_path, notice: 'Sermon Deleted'
    end

    def index
      @sermonstitle = 'Manage Sermons'
      @sermons = Sermon.all.order('created_at DESC')
    end

    private 

    def set_sermon
      @sermon = Sermon.find(params[:id])
    end

    def sermon_params
      params.require(:sermon).permit(:title, :body, :user_id, :category_id)
    end
    
  end
end