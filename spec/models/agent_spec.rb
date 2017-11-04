require 'rails_helper'

RSpec.describe Agent, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

RSpec.describe Agent, '#agent_status' do
 
  it 'clearance approved,agent Anthony no longer MIA' do
  	#setup
  	agent = described_class.create(name: 'Anthony Bond')
  	mission = DummyModel.create(code: 'The dark side of the moon',status: 'Briefed')
  	#Exercise (This part actually runs the thing that you want to test in this spec.)
  	status = mission.agent_status
  	#Verify
  	expect(status).not_to eq 'MIA'
  	#Teardown
  	#The framework takes care of memory and database cleaning issues—a reset, basically
  end
end

