describe Player do
  subject { described_class.new("Fred") }

  describe '#name' do
    it "diplays the player name" do
      expect(subject.name).to eq("Fred")
    end

    it "displays the player hp" do
      expect(subject.hp).to eq(100)
    end
  end
end
