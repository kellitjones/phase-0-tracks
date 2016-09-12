require_relative 'wordgame'

describe WordGame do
  let(:wordgame) { WordGame.new('kelli')}

  it "has a guesses array" do
    expect(wordgame.exact_guesses).to eq ["_", "_", "_", "_", "_"]
  end

  it "checks to see if a letter is in the guess word, and if it is not tells the second user" do
    expect(wordgame.examine('z')).to eq "_ _ _ _ _ "
    expect(wordgame.examine('i')).to eq "_ _ _ _ i"
  end

  it "tells the second user how many guesses they have" do
    expect(wordgame.count_user_tries).to eq "You have 4 tries to guess it right!"
  end
end
