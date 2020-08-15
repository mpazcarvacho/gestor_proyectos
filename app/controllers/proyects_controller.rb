class ProyectsController < ApplicationController
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
      flash[:notice] = "exito"
      redirect_to proyects_new_url
    else
      flash[:error] = "Ocurrió un error"
      redirect_to proyects_new_url
    end

  end
end
