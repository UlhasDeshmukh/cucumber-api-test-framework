require 'rest-client'

Given(/^user wants to get list of all countries$/) do

end

When(/^he requests get all api$/) do
  @response = RestClient.get "http://services.groupkt.com/country/get/all"
  puts @response.code
  puts @response.headers
end

Then(/^response should contains list of countries$/) do
  #puts @response.body

    response_data = JSON.parse(@response.body)
    messages = response_data["RestResponse"]["messages"][1]

    expect(messages).not_to be_nil
    expect(messages).not_to be_empty
    expect(messages).to eql("Total [249] records found.")

    result = response_data["RestResponse"]["result"]
    
end
