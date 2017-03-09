class SubjectsController < ApplicationController
  before_action :set_confrenz

  def index

  end

  def agendas
    
  end

  def create
    @confrenz = Confrenz.find(params[:confrenz_id])
    @subject = @confrenz.subjects.create(params[:subject].permit(:name, :hour))
    redirect_to confrenz_path(@confrenz)
  end
  def destroy
    @confrenz = Confrenz.find(params[:confrenz_id])
    @subject = @confrenz.subjects.find(params[:id])
    @subject.destroy
    redirect_to confrenz_path(@confrenz)
  end

  private

  def set_confrenz
    @confrenz = Confrenz.find(params[:confrenz_id])
  end
end
