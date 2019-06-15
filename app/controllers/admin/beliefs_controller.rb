module Admin
  class BeliefsController < Admin::BaseController
    before_action only: [:show, :edit, :update, :destroy]

    def new
      @belief = Belief.new
    end

    def create
      @belief = Belief.new(belief_params)
      if @belief.save
        flash[:notice] = 'About Page has been created'
        redirect_to admin_beliefs_path
      else
        render :new
      end
    end

    def edit
      @belief = Belief.find(params[:id])
    end

    def update
      @belief = Belief.find(params[:id])
      if @belief.update(belief_params)
        flash[:notice] = 'Belief Page has been updated'
        redirect_to admin_beliefs_path
      else
        render :edit
      end
    end

    def destroy
    end

    def index
      @belieftitle = 'Manage Belief Page'
      @belief = Belief.last
      if @belief.blank?
        @belief = ''
      else
        redirect_to admin_belief_path(@belief)
      end
    end

    def show
      @belief = Belief.last
    end

    private

    def set_about
      @belief = Belief.find(params[:id])
    end

    def belief_params
      params.require(:belief).permit(
        :title, :body, :scriptures_title, :scriptures_body,
        :godhead_title, :godhead_body, 
        :diety_title, :diety_body,
        :salvation_title, :salvation_body,
        :church_title, :church_body,
        :last_title, :last_body,
        :page_title, :page_notes
        )
    end
  end
end