module Admin
  class CategoriesController < Admin::BaseController
    def new
      @category = Category.new
    end

    def create
      @category = Category.new(category_params)
      if @category.save
        flash[:notice] = 'Category Created'
        redirect_to admin_categories_path
      else
        render :new
      end
    end

    def edit 
      @category = Category.find(params[:id])
    end

    def update
      @category = Category.find(params[:id])
      if @category.update(category_params)
        flash[:notice] = 'Category Updated'
        redirect_to admin_categories_path
      else 
        render :edit 
      end
    end

    def destroy
      @category = Category.find(params[:id])
      @category.destroy
      redirect_to admin_categories_path, notice: "Delete Success"
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
