class AuspiciadoresController < ApplicationController
  # GET /auspiciadores
  # GET /auspiciadores.json
  load_and_authorize_resource
  layout "backend"
  def index
    @auspiciadores = Auspiciadore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @auspiciadores }
    end
  end

  # GET /auspiciadores/1
  # GET /auspiciadores/1.json
  def show
    @auspiciadore = Auspiciadore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @auspiciadore }
    end
  end

  # GET /auspiciadores/new
  # GET /auspiciadores/new.json
  def new
    @auspiciadore = Auspiciadore.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @auspiciadore }
    end
  end

  # GET /auspiciadores/1/edit
  def edit
    @auspiciadore = Auspiciadore.find(params[:id])
  end

  # POST /auspiciadores
  # POST /auspiciadores.json
  def create
    @auspiciadore = Auspiciadore.new(params[:auspiciadore])

    respond_to do |format|
      if @auspiciadore.save
        format.html { redirect_to @auspiciadore, notice: 'Auspiciadore was successfully created.' }
        format.json { render json: @auspiciadore, status: :created, location: @auspiciadore }
      else
        format.html { render action: "new" }
        format.json { render json: @auspiciadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /auspiciadores/1
  # PUT /auspiciadores/1.json
  def update
    @auspiciadore = Auspiciadore.find(params[:id])

    respond_to do |format|
      if @auspiciadore.update_attributes(params[:auspiciadore])
        format.html { redirect_to @auspiciadore, notice: 'Auspiciadore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @auspiciadore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /auspiciadores/1
  # DELETE /auspiciadores/1.json
  def destroy
    @auspiciadore = Auspiciadore.find(params[:id])
    @auspiciadore.destroy

    respond_to do |format|
      format.html { redirect_to auspiciadores_url }
      format.json { head :no_content }
    end
  end
end
