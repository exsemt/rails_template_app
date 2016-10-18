# frozen_string_literal: true
require 'rails_helper'

describe User do
  describe 'validates' do
    it 'be valid' do
      expect(build(:user)).to be_valid
    end

    context 'when salutation empty' do
      it 'be invalid' do
        expect(build(:user, salutation: '')).to be_invalid
      end
    end

    context 'when name empty' do
      it 'be invalid' do
        expect(build(:user, name: '')).to be_invalid
      end
    end
  end
end
