class InscripcionesController < ApplicationController
  # GET /inscripciones
  # GET /inscripciones.json
  load_and_authorize_resource
  layout "backend"
  def index
    @inscripciones = Inscripcione.order('id desc').all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @inscripciones }
    end
  end

  # GET /inscripciones/1
  # GET /inscripciones/1.json
  def show
    @inscripcione = Inscripcione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @inscripcione }
    end
  end

  # GET /inscripciones/new
  # GET /inscripciones/new.json
  def new
    @inscripcione = Inscripcione.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @inscripcione }
    end
  end

  # GET /inscripciones/1/edit
  def edit
    @inscripcione = Inscripcione.find(params[:id])
  end

  # POST /inscripciones
  # POST /inscripciones.json
  def create
    @inscripcione = Inscripcione.new(params[:inscripcione])

    respond_to do |format|
      if @inscripcione.save
        format.html { redirect_to @inscripcione, notice: 'Inscripcione was successfully created.' }
        format.json { render json: @inscripcione, status: :created, location: @inscripcione }
      else
        format.html { render action: "new" }
        format.json { render json: @inscripcione.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /inscripciones/1
  # PUT /inscripciones/1.json
  def update
    @inscripcione = Inscripcione.find(params[:id])

    respond_to do |format|
      if @inscripcione.update_attributes(params[:inscripcione])
        format.html { redirect_to @inscripcione, notice: 'Inscripcione was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @inscripcione.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inscripciones/1
  # DELETE /inscripciones/1.json
  def destroy
    @inscripcione = Inscripcione.find(params[:id])
    @inscripcione.destroy

    respond_to do |format|
      format.html { redirect_to inscripciones_url }
      format.json { head :no_content }
    end
  end
end
