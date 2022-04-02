require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:example) { get users_path }
    it 'Successfuly get route' do
      expect(response).to have_http_status(:ok)
    end
    it 'render index template' do
      expect(response).to render_template('index')
    end
    it 'checks if users/index html elements render' do
      expect(response.body).to include('Card title')
    end
  end

  describe 'GET /show' do
    before(:example) { get '/users/20' }
    it 'Successfuly get route' do
      expect(response).to have_http_status(:ok)
    end
    it 'render show template' do
      expect(response).to render_template('show')
    end
    it 'checks if users/show html elements render' do
      expect(response.body).to include('User 1')
    end
  end

  describe 'GET /list' do
    before(:example) { get '/users/20/posts' }
    it 'Successfuly get route' do
      expect(response).to have_http_status(:ok)
    end
    it 'render list template' do
      expect(response).to render_template('list')
    end
    it 'checks if users/list html elements render' do
      expect(response.body).to include('This Area For User knowledge')
    end
  end

  describe 'GET /posts' do
    before(:example) { get '/users/20/posts/20' }
    it 'Successfuly get route' do
      expect(response).to have_http_status(:ok)
    end
    it 'render posts template' do
      expect(response).to render_template('posts')
    end
    it 'checks if users/posts html elements render' do
      expect(response.body).to include('Welcome to Blog Post!')
    end
  end
end
