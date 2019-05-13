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
      @about = About.last
      if @about.blank?
        @about = ''
      else
        @about = About.last
      end
    end

    def show
      # @about = About.where(about_title: about.title).present?
      # @about = About.where('id = ?', id).pluck(:about_id).first
      # if @about = About.where(about_id: about.id).present?
      #
      # else
      #   render :new
      # end
    end

    private

    def about_params
      params.require(:about).permit(:title, :body)
    end
  end
end