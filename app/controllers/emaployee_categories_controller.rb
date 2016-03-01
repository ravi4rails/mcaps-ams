class EmaployeeCategoriesController < ApplicationController
  before_action :set_emaployee_category, only: [:show, :edit, :update, :destroy]

  # GET /emaployee_categories
  # GET /emaployee_categories.json
  def index
    @emaployee_categories = EmaployeeCategory.all
  end

  # GET /emaployee_categories/1
  # GET /emaployee_categories/1.json
  def show
  end

  # GET /emaployee_categories/new
  def new
    @emaployee_category = EmaployeeCategory.new
  end

  # GET /emaployee_categories/1/edit
  def edit
  end

  # POST /emaployee_categories
  # POST /emaployee_categories.json
  def create
    @emaployee_category = EmaployeeCategory.new(emaployee_category_params)

    respond_to do |format|
      if @emaployee_category.save
        format.html { redirect_to @emaployee_category, notice: 'Emaployee category was successfully created.' }
        format.json { render :show, status: :created, location: @emaployee_category }
      else
        format.html { render :new }
        format.json { render json: @emaployee_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emaployee_categories/1
  # PATCH/PUT /emaployee_categories/1.json
  def update
    respond_to do |format|
      if @emaployee_category.update(emaployee_category_params)
        format.html { redirect_to @emaployee_category, notice: 'Emaployee category was successfully updated.' }
        format.json { render :show, status: :ok, location: @emaployee_category }
      else
        format.html { render :edit }
        format.json { render json: @emaployee_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emaployee_categories/1
  # DELETE /emaployee_categories/1.json
  def destroy
    @emaployee_category.destroy
    respond_to do |format|
      format.html { redirect_to emaployee_categories_url, notice: 'Emaployee category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emaployee_category
      @emaployee_category = EmaployeeCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def emaployee_category_params
      params.require(:emaployee_category).permit(:name)
    end
end
