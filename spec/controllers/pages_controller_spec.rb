require 'rails_helper'

RSpec.describe PagesController, type: :controller do
	describe "GET #landing_page" do
		it "renders page" do
			puts "Testing GET to landing_page"
			get :landing_page
			expect(response).to render_template :landing_page
		end
	end
end
