class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def doctor_id
        self.doctor.id
    end

    def doctor_name
        self.doctor.name
    end

    def patient_id
        self.patient.id
    end

    def patient_name
        self.patient.name
    end

    def appointment_date_and_time
        appointment_datetime.strftime("%B %d, %Y at %H:%M")
        # appointment_datetime.to_formatted_s(:long)
    end
end
