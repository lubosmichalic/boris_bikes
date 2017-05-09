require "docking_station"

describe DockingStation do
  it "assigns object in the DockingStation to the bike variable" do
    is_expected.to respond_to(:release_bike)
  end
  it "gets a bike and expects the bike to be working" do
    bike = subject.release_bike
    expect(bike).to be_working
  end
  it "docks the bike back to a docking station" do
    expect(subject).to respond_to(:dock)
  end
  
end
