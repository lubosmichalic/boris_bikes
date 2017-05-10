require "docking_station"

describe DockingStation do
  it "assigns object in the DockingStation to the bike variable" do
    is_expected.to respond_to(:release_bike)
  end
  it "gets a bike and expects the bike to be working" do
    bike = Bike.new
    expect(bike).to be_working
  end
  it "docks the bike back to a docking station" do
    expect(subject).to respond_to(:dock).with(1).argument
  end
  it "shows last docked bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq (bike)
  end
  it "gives an error when there are no bikes" do
    expect{subject.release_bike}.to raise_error "No bikes available." 
  end
end
