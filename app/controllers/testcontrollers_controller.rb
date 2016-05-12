class TestcontrollersController < ApplicationController
  before_action :set_testcontroller, only: [:show, :edit, :update, :destroy]

  # GET /testcontrollers
  # GET /testcontrollers.json
  def index
    @testcontrollers = Testcontroller.all
  end

  # GET /testcontrollers/1
  # GET /testcontrollers/1.json
  def show
  end

  # GET /testcontrollers/new
  def new
    @testcontroller = Testcontroller.new
  end

  # GET /testcontrollers/1/edit
  def edit
  end

  # POST /testcontrollers
  # POST /testcontrollers.json
  def create
    @testcontroller = Testcontroller.new(testcontroller_params)

    respond_to do |format|
      if @testcontroller.save
        format.html { redirect_to @testcontroller, notice: 'Testcontroller was successfully created.' }
        format.json { render :show, status: :created, location: @testcontroller }
      else
        format.html { render :new }
        format.json { render json: @testcontroller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testcontrollers/1
  # PATCH/PUT /testcontrollers/1.json
  def update
    respond_to do |format|
      if @testcontroller.update(testcontroller_params)
        format.html { redirect_to @testcontroller, notice: 'Testcontroller was successfully updated.' }
        format.json { render :show, status: :ok, location: @testcontroller }
      else
        format.html { render :edit }
        format.json { render json: @testcontroller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testcontrollers/1
  # DELETE /testcontrollers/1.json
  def destroy
    @testcontroller.destroy
    respond_to do |format|
      format.html { redirect_to testcontrollers_url, notice: 'Testcontroller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testcontroller
      @testcontroller = Testcontroller.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testcontroller_params
      params.require(:testcontroller).permit(:a, :b, :c)
    end
end
