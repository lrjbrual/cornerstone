module Admin
  class AboutsController < Admin::BaseController

    def new
      @about = About.new
    end

    def create
      @about = About.new(about_params)
      if @about.save
        flash[:notice] = 'About Page has been created'
        redirect_to admin_abouts_path
      else
        render :new
      end
    end

    def edit
      @about = About.find(params[:id])
    end

    def update
    end

    def destroy
    end

    def index
      @abouttitle = 'Manage About Page'
      @abouts = About.all
    end

    def show
      @about = About.where('id = ?', id).pluck(:about_id).first
      # @truck_no = Truck.where("id = ?", id).pluck(:truck_no).first
    end

    private

    def about_params
      params.permit(:about).require(:title, :body)
    end
  end
end