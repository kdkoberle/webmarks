class WebmarksController < ApplicationController
  # GET /webmarks
  # GET /webmarks.json
  def index
    @webmarks = Webmark.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @webmarks }
    end
  end

  # GET /webmarks/1
  # GET /webmarks/1.json
  def show
    @webmark = Webmark.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @webmark }
    end
  end

  # GET /webmarks/new
  # GET /webmarks/new.json
  def new
    @webmark = Webmark.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @webmark }
    end
  end

  # GET /webmarks/1/edit
  def edit
    @webmark = Webmark.find(params[:id])
  end

  # POST /webmarks
  # POST /webmarks.json
  def create
    @webmark = Webmark.new(params[:webmark])

    respond_to do |format|
      if @webmark.save
        format.html { redirect_to @webmark, notice: 'Webmark was successfully created.' }
        format.json { render json: @webmark, status: :created, location: @webmark }
      else
        format.html { render action: "new" }
        format.json { render json: @webmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /webmarks/1
  # PUT /webmarks/1.json
  def update
    @webmark = Webmark.find(params[:id])

    respond_to do |format|
      if @webmark.update_attributes(params[:webmark])
        format.html { redirect_to @webmark, notice: 'Webmark was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @webmark.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webmarks/1
  # DELETE /webmarks/1.json
  def destroy
    @webmark = Webmark.find(params[:id])
    @webmark.destroy

    respond_to do |format|
      format.html { redirect_to webmarks_url }
      format.json { head :no_content }
    end
  end
end
