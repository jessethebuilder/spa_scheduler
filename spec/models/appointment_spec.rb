require 'spec_helper'

describe Appointment do
  describe 'Validations' do
  end

  describe 'Associations' do
    it{ should belong_to(:schedule) }
  end
end
