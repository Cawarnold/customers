class UserHasProductsController < ApplicationController
  before_action :set_user_has_product, only: [:show, :edit, :update, :destroy]

  # GET /user_has_products
  # GET /user_has_products.json
  def index
    @user_has_products = UserHasProduct.all
  end

  # GET /user_has_products/1
  # GET /user_has_products/1.json
  def show
  end

  # GET /user_has_products/new
  def new
    @user_has_product = UserHasProduct.new
  end

  # GET /user_has_products/1/edit
  def edit
  end

  # POST /user_has_products
  # POST /user_has_products.json
  def create
    @user_has_product = UserHasProduct.new(user_has_product_params)

    respond_to do |format|
      if @user_has_product.save
        format.html { redirect_to @user_has_product, notice: 'User has product was successfully created.' }
        format.json { render :show, status: :created, location: @user_has_product }
      else
        format.html { render :new }
        format.json { render json: @user_has_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_has_products/1
  # PATCH/PUT /user_has_products/1.json
  def update
    respond_to do |format|
      if @user_has_product.update(user_has_product_params)
        format.html { redirect_to @user_has_product, notice: 'User has product was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_has_product }
      else
        format.html { render :edit }
        format.json { render json: @user_has_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_has_products/1
  # DELETE /user_has_products/1.json
  def destroy
    @user_has_product.destroy
    respond_to do |format|
      format.html { redirect_to user_has_products_url, notice: 'User has product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_has_product
      @user_has_product = UserHasProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_has_product_params
      params.require(:user_has_product).permit(:platform, :service, :tier)
    end
end
