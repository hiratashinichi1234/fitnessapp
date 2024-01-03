class ScadulesController < ApplicationController
  before_action :set_scadule, only: %i[ show edit update destroy ]

  # GET /scadules or /scadules.json
  def index
    @scadules = Scadule.all
  end

  # GET /scadules/1 or /scadules/1.json
  def show
  end

  # GET /scadules/new
  def new
    @scadule = Scadule.new
  end

  # GET /scadules/1/edit
  def edit
  end

  # POST /scadules or /scadules.json
  def create
    @scadule = Scadule.new(scadule_params)

    respond_to do |format|
      if @scadule.save
        format.html { redirect_to scadule_url(@scadule), notice: "Scadule was successfully created." }
        format.json { render :show, status: :created, location: @scadule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scadule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scadules/1 or /scadules/1.json
  def update
    respond_to do |format|
      if @scadule.update(scadule_params)
        format.html { redirect_to scadule_url(@scadule), notice: "Scadule was successfully updated." }
        format.json { render :show, status: :ok, location: @scadule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scadule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scadules/1 or /scadules/1.json
  def destroy
    @scadule.destroy!

    respond_to do |format|
      format.html { redirect_to scadules_url, notice: "Scadule was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scadule
      @scadule = Scadule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scadule_params
      params.require(:scadule).permit(:title, :description, :start_time, :end_time)
    end
end
