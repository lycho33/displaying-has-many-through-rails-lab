class DoctorsController < ApplicationController
    def show
    end

    private
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end
    def doctor_params
      params.require(:doctor).permit(:name, :department)
    end
end