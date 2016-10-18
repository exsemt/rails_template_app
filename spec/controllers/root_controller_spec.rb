# frozen_string_literal: true
require 'rails_helper'

describe RootController do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
