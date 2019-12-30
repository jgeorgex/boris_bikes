require 'docking_station'

describe DockingStation do  
    
    it 'has a default capacity' do
        expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
      end

    describe '#release_bike' do

    it { is_expected.to respond_to :release_bike }

    it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
    end

    describe '#dock' do
        it 'raises an error when full' do
            20.times { subject.dock Bike.new }
            expect { subject.dock Bike.new }.to raise_error 'Docking station full'
        end    
    end
    end
end
