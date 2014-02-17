require 'spec_helper'

describe Appointment do
  describe 'Validations' do
    it{ should validate_presence_of :schedule }
  end

  describe 'Associations' do
    it{ should belong_to(:schedule) }
  end
end
