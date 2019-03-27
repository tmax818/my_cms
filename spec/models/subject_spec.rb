require 'rails_helper'

RSpec.describe Subject, type: :model do
  let!(:subjects) do
    [Subject.create, Subject.create, Subject.create]
  end

  it "uses match_array to match a scope" do
    expect(Subject.all).to match_array(subjects)
  end
end
