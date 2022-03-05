class ModalsController < ApplicationController
  before_action :set_modal, only: %i[ show edit update destroy ]

  # GET /modals or /modals.json
  def index
    @modals = Modal.all
  end

  # GET /modals/1 or /modals/1.json
  def show
  end

  # GET /modals/new
  def new
    @modal = Modal.new
  end

  # GET /modals/1/edit
  def edit
  end

  # POST /modals or /modals.json
  def create
    @modal = Modal.new(modal_params)

    respond_to do |format|
      if @modal.save
        format.html { redirect_to modal_url(@modal), notice: "Modal was successfully created." }
        format.json { render :show, status: :created, location: @modal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @modal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modals/1 or /modals/1.json
  def update
    respond_to do |format|
      if @modal.update(modal_params)
        format.html { redirect_to modal_url(@modal), notice: "Modal was successfully updated." }
        format.json { render :show, status: :ok, location: @modal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @modal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modals/1 or /modals/1.json
  def destroy
    @modal.destroy

    respond_to do |format|
      format.html { redirect_to modals_url, notice: "Modal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modal
      @modal = Modal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def modal_params
      params.require(:modal).permit(:User, :name, :email, :password_digest, :remember_digest)
    end
end
