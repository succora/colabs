class CredsController < ApplicationController
  before_action :set_cred, only: [:show, :edit, :update, :destroy]

  # GET /creds
  # GET /creds.json
  def index
    @creds = Cred.all
  end

  # GET /creds/1
  # GET /creds/1.json
  def show
  end

  # GET /creds/new
  def new
    @cred = Cred.new
  end

  # GET /creds/1/edit
  def edit
  end

  # POST /creds
  # POST /creds.json
  def create
    @cred = Cred.new(cred_params)

    respond_to do |format|
      if @cred.save
        format.html { redirect_to @cred, notice: 'Cred was successfully created.' }
        format.json { render :show, status: :created, location: @cred }
      else
        format.html { render :new }
        format.json { render json: @cred.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creds/1
  # PATCH/PUT /creds/1.json
  def update
    respond_to do |format|
      if @cred.update(cred_params)
        format.html { redirect_to @cred, notice: 'Cred was successfully updated.' }
        format.json { render :show, status: :ok, location: @cred }
      else
        format.html { render :edit }
        format.json { render json: @cred.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creds/1
  # DELETE /creds/1.json
  def destroy
    @cred.destroy
    respond_to do |format|
      format.html { redirect_to creds_url, notice: 'Cred was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cred
      @cred = Cred.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cred_params
      params.require(:cred).permit(:first_name, :last_name, :email)
    end
end
