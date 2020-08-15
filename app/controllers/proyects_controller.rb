class ProyectsController < ApplicationController
  http_basic_authenticate_with name: "desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :index
  
  def index

    if params[:search]
      @proyects = Proyect.where(status: params[:search])
    else
      @proyects = Proyect.all
    end

  end

  def new
    @proyect = Proyect.new
    
  end

  
  def create
    # Proyect.create(name: params[:name], description: params[:description], start_date: params[:start_date], finish_date: params[:finish_date], status: params[:status])
    puts params
    params[:proyect][:name]
    @proyect = Proyect.new(name: params[:proyect][:name], description: params[:proyect][:description], start_date: params[:proyect][:start_date], 
      finish_date: params[:proyect][:finish_date], status: params[:proyect][:status])

    if @proyect.save
      flash[:notice] = "Proyecto creado existosamente"
      redirect_to proyects_new_path
    else
      flash[:error] = "Ocurrió un error. Verifica que los campos Nombre y Descripción estén completados."
      redirect_to proyects_new_path
      

    end

  end
end


