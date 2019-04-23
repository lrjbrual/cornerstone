module Admin
  class CategoriesController < Admin::BaseController
    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)
      if @categories.save
        flash[:notice] = 'Category Created'
        redirect_to admin_category_path
      else
        render 'new'
      end
    end

    def destroy
    end

    def index
      @categorytitle = "Manage Categories"
      @categories = Category.all
    end

    private

    def category_params
      params.require(:category).permit(:name)
    end

  end
end
