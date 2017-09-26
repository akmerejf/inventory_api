class OcorrenciasController < ApplicationController
  before_action :set_ocorrencia, only: [:show, :update, :destroy]
   # before_action :authenticate_user, except: [:index, :show, :create]
  # GET /ocorrencias
  def index
    if params[:search]
      @ocorrencias = Ocorrencia.search(params[:search]).order("created_at ASC")
    else
      @ocorrencias = Ocorrencia.all
    end

    render json: @ocorrencias
  end

  # GET /ocorrencias/1
  def show
    render json: @ocorrencia
  end

  # POST /ocorrencias
  def create
    @ocorrencia = Ocorrencia.new(ocorrencia_params)
    
    if @ocorrencia.save
      render json: @ocorrencia, status: :created, location: :ocorrencias
    else
      render json: @ocorrencia.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ocorrencias/1
  def update
    if @ocorrencia.update(ocorrencia_params)
      render json: @ocorrencia
    else
      render json: @ocorrencia.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ocorrencias/1
  def destroy
    @ocorrencia.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ocorrencia
      @ocorrencia = Ocorrencia.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ocorrencia_params
      params.require(:ocorrencia).permit(:titulo, :caminho_foto, :endereco, :bairro, :telefone, :email, :descricao, :data)
    end
end
