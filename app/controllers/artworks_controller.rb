class ArtworksController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    @artworks = Artwork.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artworks }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @artwork = Artwork.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artwork }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @artwork = Artwork.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artwork }
    end
  end

  # GET /products/1/edit
  def edit
    @artwork = Artwork.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @artwork = Artwork.new(params[:artwork])

    respond_to do |format|
      if @artwork.save
        format.html { redirect_to @artwork, notice: 'Artwork was successfully created.' }
        format.json { render json: @artwork, status: :created, location: @artwork }
      else
        format.html { render action: "new" }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @artwork = Artwork.find(params[:id])

    respond_to do |format|
      if @artwork.update_attributes(params[:artwork])
        format.html { redirect_to @artwork, notice: 'Artwork was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy

    respond_to do |format|
      format.html { redirect_to artworks_url }
      format.json { head :no_content }
    end
  end

end
