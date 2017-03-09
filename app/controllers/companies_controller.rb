class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end
  def show
      @companies = Company.find(params[:id])
  end

  def new
    @company = Company.new
    1.times { @company.schedules.build}
  end

  def edit
  @company = Company.find_by(id: params[:id])
  end

  def update
    @company = Company.find_by(id: params[:id])
    if @company.update_attributes(company_params)
      redirect_to companies_path
    else
      render :edit
    end
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path
    else
      render :new
    end
  end

  def delete
  @post = Post.find(params[:id])
  end

  def destroy
    @company = Company.find(params[:id])
    @company.destroy
    flash[:notice] = "Konferencja została usunięta."
    redirect_to(companies_path)
  end


  private

  def company_params
    params.require(:company).permit(:title, schedules_attributes: [:id, :title, :_destroy])
  end
end
