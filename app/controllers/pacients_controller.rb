class PacientsController < ApplicationController
  before_action :authenticate_interviewer!
  before_action :set_pacient, only: [:show, :edit, :update, :destroy]

  # GET /pacients
  # GET /pacients.json
  def index
    @pacients = Pacient.all
  end

  # GET /pacients/1
  # GET /pacients/1.json
  def show
  end

  # GET /pacients/new
  def new
    @pacient = Pacient.new
    options
  end

  # GET /pacients/1/edit
  def edit
    options
  end

  # POST /pacients
  # POST /pacients.json
  def create
    @pacient = Pacient.new(pacient_params)

    respond_to do |format|
      if @pacient.save
        format.html { redirect_to @pacient, notice: 'Pacient was successfully created.' }
        format.json { render :show, status: :created, location: @pacient }
      else
        format.html { render :new }
        format.json { render json: @pacient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pacients/1
  # PATCH/PUT /pacients/1.json
  def update
    respond_to do |format|
      if @pacient.update(pacient_params)
        format.html { redirect_to @pacient, notice: 'Pacient was successfully updated.' }
        format.json { render :show, status: :ok, location: @pacient }
      else
        format.html { render :edit }
        format.json { render json: @pacient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pacients/1
  # DELETE /pacients/1.json
  def destroy
    @pacient.destroy
    respond_to do |format|
      format.html { redirect_to pacients_url, notice: 'Pacient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pacient
      @pacient = Pacient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pacient_params
      params.require(:pacient).permit(:name, :sex, :birth, :occupation, :phone, :protesis, :oralSex, :observation, :street, :number, :neighborhood, :city, :state, :totalExposition, :dayPeriod, :startedTabagism, :frequenceSmoking, :stopedSmoking, :whatSmoked, :startedDrinking, :frequenceDrinking, :stopedDrinking, :whatDrinked, :whoHadCancer)
    end

    def options
      @sex_options = ['Masculino', 'Feminino', 'Outro']
      @state_options = ['AC', 'AL', 'AM', 'AP', 'BA', 'CE', 'DF', 'ES', 'GO', 'MA', 'MG', 'MS', 'MT', 'PA', 'PB', 'PE', 'PI', 'PR', 'RJ', 'RN', 'RO', 'RR', 'RS', 'SC', 'SE', 'SP', 'TO']
      @frequenceDrinking_options = ['Nunca bebeu', 'Diariamente', 'Semanalmente', 'Mensalmente', 'Esporadicamente']
      @whatDrinked_options = ['Nunca bebeu', 'Destilados (cachaça, uísque)', 'Fermentados (cerveja, vinho)']
      @totalExposition_options = ['Nenhuma', 'Diaria', 'Mais de 3 vezes por semana', 'Menos de três vezes por semana']
      @dayPeriod_options = ['Sem exposição', 'Até as 10:00h', '10:00h ~ 16:00h', 'Após 16:00h']
      @frequenceSmoking_options = ['Nunca fumou', 'Diariamente', 'Semanalmente', 'Mensalmente', 'Esporadicamente']
      @whatSmoked_options = ['Nunca fumou', 'Cigarro', 'Charuto', 'Rolo', 'Cachimbo', 'Palha']
      @whoHadCancer_options = ['Ninguém', 'Não sabe', 'O próprio paciente', 'Avô/Avó', 'Pai/Mãe', 'Tio/Tia', 'Primo, Prima']
      @oralSex_options = ['Sim', 'Não', 'Não respondeu']
    end
end
