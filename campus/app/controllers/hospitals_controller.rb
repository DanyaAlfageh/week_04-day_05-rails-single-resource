class HospitalsController < ApplicationController
    def index
        @hospitals = Hospital.all
    end
    def show
        @hospital = Hospital.find(params[:id])
    end
    def destroy
        @hospital = Hospital.find(params[:id])
        @hospital.destroy

        redirect_to hospitals_path
    end
    def new
        @hospital = Hospital.new
    end
    def create
        @hospital = Hospital.create(hospital_params)

        redirect_to hospital_path(@hospital)
    end
    def edit
        @hospital = Hospital.find(params[:id])

    end
    def update 
        @hospital = Hospital.find(params[:id])
        @hospital.update(hospital_params)
        redirect_to hospital_path(@hospital)
    end
    def hospital_params
        params.require(:hospital).permit(:name, :location, :specialty)
    end
end
