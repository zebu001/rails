class DepoimentosController < ApplicationController
  before_action :set_depoimento, only: %i[ show edit update destroy ]

  # GET /depoimentos or /depoimentos.json
  def index
    @depoimentos = Depoimento.all
  end

  # GET /depoimentos/1 or /depoimentos/1.json
  def show
  end

  # GET /depoimentos/new
  def new
    @depoimento = Depoimento.new
  end

  # GET /depoimentos/1/edit
  def edit
  end

  # POST /depoimentos or /depoimentos.json
  def create
    @depoimento = Depoimento.new(depoimento_params)

    respond_to do |format|
      if @depoimento.save
        format.html { redirect_to depoimento_url(@depoimento), notice: "Depoimento was successfully created." }
        format.json { render :show, status: :created, location: @depoimento }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @depoimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /depoimentos/1 or /depoimentos/1.json
  def update
    respond_to do |format|
      if @depoimento.update(depoimento_params)
        format.html { redirect_to depoimento_url(@depoimento), notice: "Depoimento was successfully updated." }
        format.json { render :show, status: :ok, location: @depoimento }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @depoimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /depoimentos/1 or /depoimentos/1.json
  def destroy
    @depoimento.destroy

    respond_to do |format|
      format.html { redirect_to depoimentos_url, notice: "Depoimento was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_depoimento
      @depoimento = Depoimento.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def depoimento_params
      params.require(:depoimento).permit(:descricao)
    end
end
