require 'rails_helper'
describe ProjectsController do
  describe '#index' do
    subject { get :index }
    it 'should return success response' do
      subject
      expect(response).to have_http_status(:ok)
    end

    it 'should return proper json' do
      create_list :project, 2
      subject
      Project.recent.each_with_index do |project, index|
      expect(json_data[index]['attributes']).to eq({
                                                 "title" => project.title,
                                                 "content" => project.content,
                                                 "slug" => project.slug
                                               })
      end
    end

    it 'should paginate results' do
      create_list :project, 3
      get :index, params: { page: 2, per_page: 1}
      expect(json_data.length).to eq 1
      expected_project = Project.recent.second.id.to_s
      expect(json_data.first['id']).to eq(expected_project)
    end
  end
end