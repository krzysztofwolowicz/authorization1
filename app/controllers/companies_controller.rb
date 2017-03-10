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
    1.times { @company.lecturers.build}
    1.times { @company.abouts.build}
    1.times { @company.arranged_appointments.build}
    1.times { @company.city_guides.build}
    1.times { @company.comments.build}
    1.times { @company.customs.build}
    1.times { @company.exhibitors.build}
    1.times { @company.galleries.build}
    1.times { @company.information.build}
    1.times { @company.location_plans.build}
    1.times { @company.make_an_appointments.build}
    1.times { @company.messages.build}
    1.times { @company.notifications.build}
    1.times { @company.participants.build}
    1.times { @company.partners.build}
    1.times { @company.presentations.build}
    1.times { @company.questionnaires.build}
    1.times { @company.social_media.build}
    1.times { @company.soundings.build}
    1.times { @company.sponsors.build}
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


  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy
    flash[:notice] = "Konferencja została usunięta."
    redirect_to(companies_path)
  end


  private

  def company_params
    params.require(:company).permit(:title, schedules_attributes: [:id, :title, :_destroy],
    abouts_attributes: [:id, :title, :_destroy],
    arranged_appointments_attributes: [:id, :title, :_destroy],
    city_guides_attributes: [:id, :title, :_destroy],
    comments_attributes: [:id, :title, :_destroy],
    customs_attributes: [:id, :title, :_destroy],
    exhibitors_attributes: [:id, :title, :_destroy],
    galleries_attributes: [:id, :title, :_destroy],
    information_attributes: [:id, :title, :_destroy],
    location_plans_attributes: [:id, :title, :_destroy],
    make_an_appointments_attributes: [:id, :title, :_destroy],
    messages_attributes: [:id, :title, :_destroy],
    notifications_attributes: [:id, :title, :_destroy],
    participants_attributes: [:id, :title, :_destroy],
    partners_attributes: [:id, :title, :_destroy],
    presentations_attributes: [:id, :title, :_destroy],
    questionnaires_attributes: [:id, :title, :_destroy],
    social_media_attributes: [:id, :title, :_destroy],
    sponsors: [:id, :title, :_destroy],
    soundings_attributes: [:id, :title, :_destroy])
  end
end
