class PatientsController < ApplicationController
    def index
        @hospital = Hospital.find(params[:hospital_id])
        @patients = @hospital.patients
    end

    def show 
        @hospital = Hospital.find(params[:hospital_id])
        @patient = @hospital.patients.find(params[:id])
    end

    def destroy
        @hospital = Hospital.find(params[:hospital_id])
        @patient = @hospital.patients.find(params[:id])
        @patient.destroy

        redirect_to hospital_patients_path(@hospital)
    end

    def new 
        @hospital = Hospital.find(params[:hospital_id])
        @patient = @hospital.patients.new
    end

    def create
        @hospital = Hospital.find(params[:hospital_id])
        @patient = @hospital.patients.create(patient_params)
        # redirect_to Patients_path
        redirect_to hospital_patient_path(@hospital, @patient)
    end

    def edit 
        @hospital = Hospital.find(params[:hospital_id])
        @patient = @hospital.patients.find(params[:id])
    end

    def update 
        @hospital = Hospital.find(params[:hospital_id])
        @patient = @hospital.patients.find(params[:id])
        @patient.update(patient_params)
        # redirect_to Patients_path
        redirect_to hospital_patient_path(@hospital, @patient)
    end

    def patient_params
        params.require(:patient).permit(:first_name, :last_name, :born_on)
    end
end
