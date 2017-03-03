class SubjectsController < ApplicationController
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
end
