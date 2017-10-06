class ProductbyquotesController < ApplicationController
  before_action :set_productbyquote, only: [:show, :update, :destroy]

  # GET /productbyquotes
  def index
    @productbyquotes = Productbyquote.all

    render json: @productbyquotes
  end

  # GET /productbyquotes/1
  def show
    render json: @productbyquote
  end

  # POST /productbyquotes
  def create
    @productbyquote = Productbyquote.new(productbyquote_params)

    if @productbyquote.save
      render json: @productbyquote, status: :created, location: @productbyquote
    else
      render json: @productbyquote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /productbyquotes/1
  def update
    if @productbyquote.update(productbyquote_params)
      render json: @productbyquote
    else
      render json: @productbyquote.errors, status: :unprocessable_entity
    end
  end

  # DELETE /productbyquotes/1
  def destroy
    @productbyquote.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_productbyquote
      @productbyquote = Productbyquote.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def productbyquote_params
      params.require(:productbyquote).permit(:quantity, :param1, :param2, :param3, :param4, :product_id, :quote_id)
    end
end
