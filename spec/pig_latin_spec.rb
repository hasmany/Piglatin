require "./lib/pig_latin.rb"


describe "Pig_latin" do

  it "is a module" do

    expect(PigLatin).to be_a(Module)
  end

  it "translate to pig-latin" do

    expect(PigLatin.translate("glove")).to eq "oveglay"
  end

  it "checks if the first word is a vowel, adds way to end" do
    expect(PigLatin.translate("egg")).to eq "eggway"
    expect(PigLatin.translate("ouch")).to eq "ouchway"
  end

  it "checks if only the first letter is a constant, put the first letter of the string at the end, and add ay" do
    expect(PigLatin.translate("yellow")).to eq "ellowyay"
    expect(PigLatin.translate("happy")).to eq "appyhay"
    expect(PigLatin.translate("sorry")).to eq "orrysay"
  end

  it "ignores location of y, if it starts, and adds ay at the end" do
    expect(PigLatin.translate("rhythm")).to eq "ythmrhay"
    expect(PigLatin.translate("create")).to eq "eatecray"
    expect(PigLatin.translate("that")).to eq "atthay"

  end

   it "translates word to pig-latin" do
    expect(PigLatin.translate("glove")).to eq "oveglay"
  end


end
