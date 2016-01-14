class ClaimsController < ApplicationController
  before_action :set_claim, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @claims = Claim.all
    respond_with(@claims)
  end

  def show
    respond_with(@claim)
  end

  def new
    @claim = Claim.new
    respond_with(@claim)
  end

  def edit
  end

  def create
    @claim = Claim.new(claim_params)
    @claim.save
    respond_with(@claim)
  end

  def update
    @claim.update(claim_params)
    respond_with(@claim)
  end

  def destroy
    @claim.destroy
    respond_with(@claim)
  end

  private
    def set_claim
      @claim = Claim.find(params[:id])
    end

    def claim_params
      params.require(:claim).permit(:name, :surname)
    end
end
