class PonentesController < ApplicationController
  # GET /ponentes
  # GET /ponentes.json
  load_and_authorize_resource
  layout "backend"
  def index
    @ponentes = Ponente.order('id desc').all
    @ponentes_internacionales  = Ponente.where("tipo LIKE ?" , "internacional").order('id desc').all
    @ponentes_nacionales  = Ponente.where("tipo LIKE ?" , "nacional").order('id desc').all
    @ponentes_tallers     = Ponente.where("tipo LIKE ?" , "taller").order('id desc').all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ponentes }
    end
  end

  # GET /ponentes/1
  # GET /ponentes/1.json
  def show
    @ponente = Ponente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ponente }
    end
  end

  # GET /ponentes/new
  # GET /ponentes/new.json
  def new
    @ponente = Ponente.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ponente }
    end
  end

  # GET /ponentes/1/edit
  def edit
    @ponente = Ponente.find(params[:id])
  end

  # POST /ponentes
  # POST /ponentes.json
  def create
    @ponente = Ponente.new(params[:ponente])

    respond_to do |format|
      if @ponente.save
        format.html { redirect_to :action=> "index", notice: 'Ponente was successfully created.' }
        format.json { render json: @ponente, status: :created, location: @ponente }
      else
        format.html { render action: "new" }
        format.json { render json: @ponente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ponentes/1
  # PUT /ponentes/1.json
  def update
    @ponente = Ponente.find(params[:id])

    respond_to do |format|
      if @ponente.update_attributes(params[:ponente])
        format.html { redirect_to :action => "show", notice: 'Ponente was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ponente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ponentes/1
  # DELETE /ponentes/1.json
  def destroy

    @ponente = Ponente.find(params[:id])
    @ponente.destroy
    respond_to do |format|
      format.html { redirect_to ponentes_url }
      format.json { head :no_content }
    end
  end
end
