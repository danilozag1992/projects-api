require 'rails_helper'

RSpec.describe Project, type: :model do
  describe '#validations' do
    it 'should test taht the factory is valid' do
      expect(build :project).to be_valid
    end

    it 'should validate the presence of the title' do
      project = build :project, title: ''
      expect(project).not_to be_valid
      expect(project.errors.messages[:title]).to include("can't be blank")
    end

    it 'should validate the presence of the content' do
      project = build :project, content: ''
      expect(project).not_to be_valid
      expect(project.errors.messages[:content]).to include("can't be blank")
    end

    it 'should validate the presence of the slug' do
      project = build :project, slug: ''
      expect(project).not_to be_valid
      expect(project.errors.messages[:slug]).to include("can't be blank")
    end

    it 'should validate uniqueness of the slug' do
      project = create :project
      invalid_project = build :project, slug: project.slug
      expect(invalid_project).not_to be_valid
    end
  end

  describe '.recent' do
    it 'should list recent project first' do
      old_project = create :project
      newer_project = create :project
      expect(described_class.recent).to eq(
                                          [ newer_project, old_project ]
                                        )
      old_project.update_column :created_at, Time.now
      expect(described_class.recent).to eq(
                                          [ old_project, newer_project ]
                                        )
    end
  end
end