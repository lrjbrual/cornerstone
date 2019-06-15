module Admin
  class AboutsController < Admin::BaseController
    before_action only: [:show, :edit, :update, :destroy]

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
      @about = About.find(params[:id])
      if @about.update(about_params)
        flash[:notice] = 'About Page has been updated'
        redirect_to admin_abouts_path
      else
        render :edit
      end
    end

    def destroy
    end

    def index
      @abouttitle = 'Manage About Page'
      @about = About.last
      if @about.blank?
        @about = ''
      else
        redirect_to admin_about_path(@about)
      end
    end

    def show
      @about = About.last
      # @about = About.where(about_title: about.title).present?
      # @about = About.where('id = ?', id).pluck(:about_id).first
      # if @about = About.where(about_id: about.id).present?
      #
      # else
      #   render :new
      # end
    end

    private

    def set_about
      @about = About.find(params[:id])
    end

    def about_params
      params.require(:about).permit(
        :about_us, :schedule, :name, :phone, :email, :address
        )
    end
  end
end