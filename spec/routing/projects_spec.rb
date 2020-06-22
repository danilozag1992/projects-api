require 'rails_helper'

describe 'project routes' do
  it 'should route to projects index' do
    expect(get '/projects').to route_to('projects#index')
  end

  it 'should route to projects show' do
    expect(get '/projects/1').to route_to('projects#show', id: '1')
  end
end