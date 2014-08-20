class AccessionLogsController < ApplicationController
  before_action :set_accession_log, only: [:show, :edit, :update, :destroy]

  # GET /accession_logs
  # GET /accession_logs.json
  def index
    @accession_logs = AccessionLog.all
  end

  # GET /accession_logs/1
  # GET /accession_logs/1.json
  def show
  end

  # GET /accession_logs/new
  def new
    @accession_log = AccessionLog.new
  end

  # GET /accession_logs/1/edit
  def edit
  end

  # POST /accession_logs
  # POST /accession_logs.json
  def create
    @accession_log = AccessionLog.new(accession_log_params)

    respond_to do |format|
      if @accession_log.save
        format.html { redirect_to @accession_log, notice: 'Accession log was successfully created.' }
        format.json { render :show, status: :created, location: @accession_log }
      else
        format.html { render :new }
        format.json { render json: @accession_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /accession_logs/1
  # PATCH/PUT /accession_logs/1.json
  def update
    respond_to do |format|
      if @accession_log.update(accession_log_params)
        format.html { redirect_to @accession_log, notice: 'Accession log was successfully updated.' }
        format.json { render :show, status: :ok, location: @accession_log }
      else
        format.html { render :edit }
        format.json { render json: @accession_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /accession_logs/1
  # DELETE /accession_logs/1.json
  def destroy
    @accession_log.destroy
    respond_to do |format|
      format.html { redirect_to accession_logs_url, notice: 'Accession log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_accession_log
      @accession_log = AccessionLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def accession_log_params
      params.require(:accession_log).permit(:date_received, :date_received_physicians_office, :user_id)
    end
end
