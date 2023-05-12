require 'rails_helper'

RSpec.describe 'Users', type: :request do
    describe "GET /users" do
        it "should return http success" do
            get "/users"
            expect(response.status).to eq(200)
            expect(response).to have_http_status(:success)
            expect(response).to render_template(:index)
            expect(response.body).to include('All Users')
        end
    end

    describe "GET /users/:id" do
        it "should return http success" do
            get "/users/1"

            expect(response.status).to eq(200)
            expect(response).to have_http_status(:success)
            expect(response).to render_template(:show)
            expect(response.body).to include('Single User')
        end
    end
end