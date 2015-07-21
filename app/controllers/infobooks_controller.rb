class InfobooksController < ApplicationController
  before_action :set_infobook, only: [:show, :edit, :update, :destroy]

  # GET /infobooks
  # GET /infobooks.json
  def index
    # @infobooks = Infobook.all
  end

  # GET /infobooks/1
  # GET /infobooks/1.json
  def show
  end

  # GET /infobooks/new
  def new
    @infobook = Infobook.new
  end

  # GET /infobooks/1/edit
  def edit
  end

  # POST /infobooks
  # POST /infobooks.json
  def create
    @infobook = Infobook.new(infobook_params)

    respond_to do |format|
      if @infobook.save
        format.html { redirect_to @infobook, notice: 'Infobook was successfully created.' }
        format.json { render :show, status: :created, location: @infobook }
      else
        format.html { render :new }
        format.json { render json: @infobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /infobooks/1
  # PATCH/PUT /infobooks/1.json
  def update
    respond_to do |format|
      if @infobook.update(infobook_params)
        format.html { redirect_to @infobook, notice: 'Infobook was successfully updated.' }
        format.json { render :show, status: :ok, location: @infobook }
      else
        format.html { render :edit }
        format.json { render json: @infobook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /infobooks/1
  # DELETE /infobooks/1.json
  def destroy
    @infobook.destroy
    respond_to do |format|
      format.html { redirect_to infobooks_url, notice: 'Infobook was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_infobook
      @infobook = Infobook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def infobook_params
      params.require(:infobook).permit(:title, :isbn, :author, :publisher, :rating, :descripton, :image_link)
    end
end
