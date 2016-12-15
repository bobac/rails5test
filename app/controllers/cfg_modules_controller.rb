class CfgModulesController < ApplicationController
  before_action :set_cfg_module, only: [:show, :edit, :update, :destroy]

  # GET /cfg_modules
  # GET /cfg_modules.json
  def index
    @cfg_modules = CfgModule.all
  end

  # GET /cfg_modules/1
  # GET /cfg_modules/1.json
  def show
  end

  # GET /cfg_modules/new
  def new
    @cfg_module = CfgModule.new
  end

  # GET /cfg_modules/1/edit
  def edit
  end

  # POST /cfg_modules
  # POST /cfg_modules.json
  def create
    @cfg_module = CfgModule.new(cfg_module_params)

    respond_to do |format|
      if @cfg_module.save
        format.html { redirect_to @cfg_module, notice: 'Cfg module was successfully created.' }
        format.json { render :show, status: :created, location: @cfg_module }
      else
        format.html { render :new }
        format.json { render json: @cfg_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cfg_modules/1
  # PATCH/PUT /cfg_modules/1.json
  def update
    respond_to do |format|
      if @cfg_module.update(cfg_module_params)
        format.html { redirect_to @cfg_module, notice: 'Cfg module was successfully updated.' }
        format.json { render :show, status: :ok, location: @cfg_module }
      else
        format.html { render :edit }
        format.json { render json: @cfg_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cfg_modules/1
  # DELETE /cfg_modules/1.json
  def destroy
    @cfg_module.destroy
    respond_to do |format|
      format.html { redirect_to cfg_modules_url, notice: 'Cfg module was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cfg_module
      @cfg_module = CfgModule.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cfg_module_params
      params.require(:cfg_module).permit(:name, :description)
    end
end
