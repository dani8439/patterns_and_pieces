require 'spec_helper'

describe "Pattern" do
  before do
    @pattern = Pattern.create(:name => "Love & Kisses", :theme => "Pinks")

    small_jug = Piece.create(:name => "Jug", :size => "1.5 Pint", :pattern => @pattern)
  end

  it "can be initialized" do
    expect(@pattern).to be_an_instance_of(Pattern)
  end

  it "can have a name" do
    expect(@pattern.name).to eq("Love & Kisses")
  end

  it "has many pieces" do
    expect(@pattern.pieces.count).to eq(1)
  end
end
