class Job < ApplicationRecord
  belongs_to :user
  mount_uploader :avatar, AvatarUploader

  JOB_TYPES = ["Temps-plein", "Temps-partiel", "Job-ete", "CDI", "CDD", "Cash", "Independant"]
end
