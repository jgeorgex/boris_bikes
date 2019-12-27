require 'docking_station'

describe DockingStation do  
    
    it 'docks something' do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
    end

    it 'returs docked bikes' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.bike).to eq bike
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
            subject.dock(Bike.new)
            expect { subject.dock Bike.new }.to raise_error 'Docking station full'
        end    
    end
end
end