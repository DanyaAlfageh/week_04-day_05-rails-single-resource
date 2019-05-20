class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end
    def show
        @patient = Patient.find(params[:id])
    end
    def destroy
        @patient = Patient.find(params[:id])
        @patient.destroy

        redirect_to patients_path
    end
    def new
        @patient = Patient.new
    end
    def create
        @patient = Patient.create(patient_params)

        redirect_to patient_path(@patient)
    end
    def edit
        @patient = Patient.find(params[:id])

    end
    def update 
        @patient = Patient.find(params[:id])
        @patient.update(patient_params)
        redirect_to patient_path(@patient)
    end
    def patient_params
        params.require(:patient).permit(:first_name, :last_name, :born_on)
    end
end
