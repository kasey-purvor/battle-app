require 'Player'

describe Player do
  subject { described_class.new("Fred")}

  describe '#name' do
    it "diplays the player name" do
      expect(subject.name).to eq("Fred")
    end
  end
end
