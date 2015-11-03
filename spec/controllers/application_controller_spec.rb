require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe '#app_user' do
    context 'when current_user empty' do
      it 'returns User' do
        expect(controller.app_user).to be_a(User)
      end

      it 'returns new User' do
        expect(controller.app_user).to be_new_record
      end

      it 'returns User with role "guest"' do
        expect(controller.app_user.role).to eq('guest')
      end
    end

    context 'when current_user present' do
      let(:current_user) { create(:user) }
      before do
        allow(controller).to receive(:current_user).and_return(current_user)
      end

      it 'calls current_user' do
        expect(controller).to receive(:current_user).and_return(current_user)
        controller.app_user
      end

      it 'returns current_user' do
        expect(controller.app_user).to be(current_user)
      end
    end
  end
end
