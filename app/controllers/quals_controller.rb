class QualsController < ApplicationController
  before_action :set_qual, only: [:show, :edit, :update, :destroy]

  # GET /quals
  # GET /quals.json
  def index
    @quals = Qual.all
  end

  # GET /quals/1
  # GET /quals/1.json
  def show
  end

  # GET /quals/new
  def new
    @qual = Qual.new
  end

  # GET /quals/1/edit
  def edit
  end

  # POST /quals
  # POST /quals.json
  def create
    @qual = Qual.new(qual_params)

    respond_to do |format|
      if @qual.save
        format.html { redirect_to @qual, notice: 'Qual was successfully created.' }
        format.json { render :show, status: :created, location: @qual }
      else
        format.html { render :new }
        format.json { render json: @qual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quals/1
  # PATCH/PUT /quals/1.json
  def update
    respond_to do |format|
      if @qual.update(qual_params)
        format.html { redirect_to @qual, notice: 'Qual was successfully updated.' }
        format.json { render :show, status: :ok, location: @qual }
      else
        format.html { render :edit }
        format.json { render json: @qual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quals/1
  # DELETE /quals/1.json
  def destroy
    @qual.destroy
    respond_to do |format|
      format.html { redirect_to quals_url, notice: 'Qual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_qual
      @qual = Qual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def qual_params
      params.require(:qual).permit(:name, :difficulty, :passrate, :acquisition)
    end
end
