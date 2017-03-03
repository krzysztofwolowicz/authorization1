class ConfrenzsController < ApplicationController
  before_action :authenticate_user!

  def index
    @confrenzs = Confrenz.all
  end

  def show
    @confrenz = Confrenz.find(params[:id])
  end

  def new
    @confrenz = Confrenz.new
  end

  def create
    @confrenz = Confrenz.new(confrenzs_params)
    @confrenz.user = current_user

    if @confrenz.save
      flash[:notice] = "Post został utworzony."
      redirect_to confrenz_path(@confrenz), :notice => "Konferencja została dodana"
    else
    render('new')
    end

  end

  def edit
    @confrenz = Confrenz.find(params[:id])

  end

  def update
    @confrenz = Confrenz.find(params[:id])

    if @confrenz.update_attributes(confrenzs_params)
      flash[:notice] = "Konferencja została edytowana."
      redirect_to(confrenzs_path(@confrenz))
    else
    render('edit')
    end
  end

  def delete
    @confrenz = Confrenz.find(params[:id])

  end

  def destroy
    @confrenz = Confrenz.find(params[:id])
    @confrenz.destroy
    flash[:notice] = "Konferencja '#{@confrenz.titile}' został usunięty."
    redirect_to(confrenzs_path)
  end

  private

  def confrenzs_params
    params.require(:confrenz).permit(:titile, :content, :start, :block, :time_block)
  end

end
