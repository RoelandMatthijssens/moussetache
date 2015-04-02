class PricerowsController < ApplicationController
	before_action :set_pricerow, only: [:show, :edit, :update, :destroy]
	layout "admin"

	# GET /pricerows
	# GET /pricerows.json
	def index
		@pricerows = Pricerow.all
		@pricerow = Pricerow.new
	end

	# GET /pricerows/1
	# GET /pricerows/1.json
	def show
	end

	# GET /pricerows/new
	def new
		@pricerow = Pricerow.new
	end

	# GET /pricerows/1/edit
	def edit
	end

	# POST /pricerows
	# POST /pricerows.json
	def create
		@pricerow = Pricerow.new(pricerow_params)

		respond_to do |format|
			if @pricerow.save
				format.html { redirect_to edit_product_path(@pricerow.product), notice: 'Pricerow was successfully created.' }
				format.json { render action: 'show', status: :created, location: @pricerow }
			else
				format.html { render action: 'new' }
				format.json { render json: @pricerow.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /pricerows/1
	# PATCH/PUT /pricerows/1.json
	def update
		respond_to do |format|
			if @pricerow.update(pricerow_params)
				format.html { redirect_to @pricerow, notice: 'Pricerow was successfully updated.' }
				format.json { head :no_content }
			else
				format.html { render action: 'edit' }
				format.json { render json: @pricerow.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /pricerows/1
	# DELETE /pricerows/1.json
	def destroy
		@pricerow.destroy
		respond_to do |format|
			format.html { redirect_to pricerows_url }
			format.json { head :no_content }
		end
	end

	private
		# Use callbacks to share common setup or constraints between actions.
		def set_pricerow
			@pricerow = Pricerow.find(params[:id])
		end

		# Never trust parameters from the scary internet, only allow the white list through.
		def pricerow_params
			params.require(:pricerow).permit(:value, :affix, :product_id, :description, :currency)
		end
end
