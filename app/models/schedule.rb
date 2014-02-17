class Schedule < ActiveRecord::Base
  belongs_to :scheduled, :polymorphic => true

  has_many :appointments

  has_one :availability
  accepts_nested_attributes_for :availability


end
