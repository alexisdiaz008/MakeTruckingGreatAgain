require 'rails_helper'
#Checks if all factories meet their validations
FactoryBot.factories.map(&:name).each do |factory_name|
  describe "The #{factory_name} factory" do
     it 'is valid' do
     	factory = FactoryBot.build(factory_name)
     	expect(factory).to(be_valid)
     end
  end
end