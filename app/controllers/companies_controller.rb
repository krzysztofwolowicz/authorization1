class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end
  def show
      @companies = Company.find(params[:id])
  end

  def new
    @company = Company.new
    1.times { @company.traits.build}

  end

  def edit
    @keys = [:schedule, :lecturer, :participant, :message, :make, :arranged, :information, :sponsor, :partner, :exhibitor, :social, :questionnaire, :presentation, :city, :soundings, :comment, :location, :gallery, :notification, :about, :custom,]
    @company = Company.find_by(id: params[:id])
    @traits = @company.traits.order(order: :asc)
    @keys.each do |key|
      @company.traits.build(key: key)
    end

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


  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy
    flash[:notice] = "Konferencja została usunięta."
    redirect_to(companies_path)
  end




  private

  def company_params
    params.require(:company).permit(:title,
    traits_attributes: [:id, :title, :key, :order, :_destroy])
  end
end
