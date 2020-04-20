require 'rspec'
require 'lru_cache.rb'

describe LRU_Cache do

    subject(:johnny_cache) {LRU_Cache.new}

    describe "#initialize" do
        it 'should initialize a cache with a size of 4, if not otherwise specified' do
            expect(johnny_cache.size).to eq(4)
        end

        it 'should have a count of zero elements before anything is added to it' do
            expect(johnny_cache.count).to eq(0)
        end
    end

    describe "#count" do
    end

    describe "#add" do
    end

    describe "#show" do
    end
end