require 'spec_helper'

describe Schedule do
  describe 'Validations' do
  end

  describe 'Associations' do
    it{ should have_many :appointments }
  end
end
