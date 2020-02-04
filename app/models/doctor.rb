class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments

  def find_patient_by_appointment(appointment)
    self.patients.find(appointment.patient_id)
  end
end
