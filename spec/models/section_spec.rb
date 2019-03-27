require 'rails_helper'

RSpec.describe Section, type: :model do
  section = Section.new
  it('is a class') do
    expect(section.id).to eq(nil)
  end
end
