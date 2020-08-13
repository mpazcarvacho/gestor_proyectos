class PagesController < ApplicationController
  http_basic_authenticate_with name:"desafiovamoscontodo", password: "XAHTJEAS23123%23", only: :index
  def index
  end

  def new
  end

  def create
  end
end
