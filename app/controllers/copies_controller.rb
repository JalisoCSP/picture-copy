class CopiesController < ApplicationController
  before_action :set_picture
  before_action :set_copy, only: [:show, :edit, :update, :destroy]

  # GET /copies
  # GET /copies.json
  def index
    @copies = @picture.copies
  end

  # GET /copies/1
  # GET /copies/1.json
  def show
  end

  # GET /copies/new
  def new
    @copy = @picture.copies.build
  end

  # GET /copies/1/edit
  def edit
  end

  # POST /copies
  # POST /copies.json
  def create
    @copy = @picture.copies.new(copy_params)

    respond_to do |format|
      if @copy.save
        format.html { redirect_to @copy.picture, notice: 'Copy was successfully created.' }
        format.json { render :show, status: :created, location: @copy }
      else
        format.html { render :new }
        format.json { render json: @copy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /copies/1
  # PATCH/PUT /copies/1.json
  def update
    respond_to do |format|
      if @copy.update(copy_params)
        format.html { redirect_to @copy.picture, notice: 'Copy was successfully updated.' }
        format.json { render :show, status: :ok, location: @copy }
      else
        format.html { render :edit }
        format.json { render json: @copy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copies/1
  # DELETE /copies/1.json
  def destroy
    @copy.destroy
    respond_to do |format|
      format.html { redirect_to copies_url, notice: 'Copy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture
      @picture = Picture.find(params[:picture_id])
    end

    def set_copy
      @copy = Copy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def copy_params
      params.fetch(:copy, {}).permit(:image, :name, :picture_id)
    end
end
