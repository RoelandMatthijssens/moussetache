class CategoryPagesController < ApplicationController
	before_action :set_category_page, only: [:show, :edit, :update, :destroy]
	layout "admin"

	# GET /category_pages
	# GET /category_pages.json
	def index
		@category_pages = CategoryPage.all
	end

	# GET /category_pages/1
	# GET /category_pages/1.json
	def show
	end

	# GET /category_pages/new
	def new
		@category_page = CategoryPage.new
	end

	# GET /category_pages/1/edit
	def edit
	end

	# POST /category_pages
	# POST /category_pages.json
	def create
		@category_page = CategoryPage.new(category_page_params)

		respond_to do |format|
			if @category_page.save
				format.html { redirect_to @category_page, notice: 'Category page was successfully created.' }
				format.json { render action: 'index', status: :created, location: @category_page }
			else
				format.html { render action: 'new' }
				format.json { render json: @category_page.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /category_pages/1
	# PATCH/PUT /category_pages/1.json
	def update
		respond_to do |format|
			if @category_page.update(category_page_params)
				format.html { redirect_to @category_page, notice: 'Category page was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @category_page.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /category_pages/1
	# DELETE /category_pages/1.json
	def destroy
		@category_page.destroy
		respond_to do |format|
			format.html { redirect_to category_pages_url }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_category_page
			@category_page = CategoryPage.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def category_page_params
			params.require(:category_page).permit(:name, :image)
		end
end
