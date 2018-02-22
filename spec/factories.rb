FactoryBot.define do 
  
	factory :user do
		sequence(:email) { |n| "foo#{n}@example.com" }
		password "asdfasdf"
		admin true
	end

	factory :company do
		sequence(:name) { |n| "Lex Corps#{n}" }
		feed_source "http://www.xmlfeed.me/xml/company/1/3.xml"
	end

	factory :job do
		sequence(:title) { |n| "job#{n}" }
		state "Florida"
	end

	factory :application do
		company = FactoryBot.create(:company)
		sequence(:email) { |n| "TruckerJohn00#{n}@example.com" }
		sequence(:first_name) { |n| "(#{n})John" }
		sequence(:last_name) { |n| "(#{n})Truckingson" }
		sequence(:phone_number) { |n| "3333333333"}
		sequence(:city) { |n| "Miami"}
		sequence(:state) { |n| "Texas"}
		sequence(:experience) { |n| "Company Driver"}
		sequence(:driver_type) { |n| "1-3 Years"}
		sequence(:job) { |n| company.jobs[n] }
	end

end