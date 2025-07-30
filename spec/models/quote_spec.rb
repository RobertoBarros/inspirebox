require 'rails_helper'

RSpec.describe Quote, type: :model do
  let(:quote) { Quote.new(content: 'Keep moving forward', author: 'Walt Disney') }

  describe 'validations' do
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:author) }
  end

  describe 'attributes' do
    it 'has content' do
      expect(quote.content).to eq('Keep moving forward')
    end

    it 'has an author' do
      expect(quote.author).to eq('Walt Disney')
    end
  end
end
