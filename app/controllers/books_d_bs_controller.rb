class BooksDBsController < ApplicationController
  before_action :set_books_db, only: [:show, :edit, :update, :destroy]

  # GET /books_dbs
  # GET /books_dbs.json
  def index
    @books_dbs = BooksDb.all
  end

  # GET /books_dbs/1
  # GET /books_dbs/1.json
  def show
  end

  # GET /books_dbs/new
  def new
    @books_db = BooksDb.new
  end

  # GET /books_dbs/1/edit
  def edit
  end

  # POST /books_dbs
  # POST /books_dbs.json
  def create
    @books_db = BooksDb.new(books_db_params)

    respond_to do |format|
      if @books_db.save
        format.html { redirect_to @books_db, notice: 'Books db was successfully created.' }
        format.json { render :show, status: :created, location: @books_db }
      else
        format.html { render :new }
        format.json { render json: @books_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books_dbs/1
  # PATCH/PUT /books_dbs/1.json
  def update
    respond_to do |format|
      if @books_db.update(books_db_params)
        format.html { redirect_to @books_db, notice: 'Books db was successfully updated.' }
        format.json { render :show, status: :ok, location: @books_db }
      else
        format.html { render :edit }
        format.json { render json: @books_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books_dbs/1
  # DELETE /books_dbs/1.json
  def destroy
    @books_db.destroy
    respond_to do |format|
      format.html { redirect_to books_dbs_url, notice: 'Books db was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_books_db
      @books_db = BooksDb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def books_db_params
      params.require(:books_db).permit(:title, :isbn, :author, :publisher, :rating, :descripton, :image_link)
    end
end
