class IniciosController < ApplicationController

  layout "application", :only => [:ponentes, :informacion, :inscritos, :nosotros, :lugar, :galeria, :contacto, :inscripciones_ok, :paginas, :contacto_ok, :ponentes_detalle, :galeria_detalle, :auspiciadores, :auspiciadore_detalle]

  def index
    @ponentes = Ponente.limit(8)
    @fotos = Foto.order('id desc').limit(4)
    #@auspiciadores = Auspiciadore.order('id desc')
  end

  def ponentes
    @ponentes = Ponente.all
  end

  def ponentes_detalle
    @ponente = Ponente.find(params[:id])
  end

  def informacion

  end

  def inscritos
    @inscripciones = Inscripcione.order('id desc').all
  end

  def galeria
    @fotos = Foto.all
  end

  def galeria_detalle
    @foto = Foto.find(params[:id])
  end

  def nosotros

  end

  def lugar

  end

  def contacto

  end

  def contacto_envio
    @contacto = Contacto.new(params[:contacto])

    respond_to do |format|
      if @contacto.save
        format.html { redirect_to :action=>"contacto_ok", notice: 'Contacto was successfully created.' }
        format.json { render json: @contacto, status: :created, location: @contacto }
      else
        format.html { redirect_to "/inicios/contacto" }
        format.json { render json: @contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  def contacto_ok

  end


  def inscripciones
    @inscripcione = Inscripcione.new(params[:inscripcione])

    respond_to do |format|
      if @inscripcione.save
        format.html { redirect_to :action=>"inscripciones_ok"}
      else
        format.html { redirect_to "/#inscripcion" }
      end
    end
  end

  def inscripciones_ok
  end

  def paginas
    @pagina = Pagina.find(params[:id])
  end

  def auspiciadores
    @auspiciadores = Auspiciadore.order('id desc').all
  end

  def auspiciadore_detalle
    @auspiciadore = Auspiciadore.find(params[:id])
  end
end
