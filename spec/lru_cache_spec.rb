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
        it 'should return the number of elements currently stored in our LRU cache'
    end

    describe "#add" do
        it 'should be able to add elements to the cache, even if they differ in type'
    end

    describe "#show" do
        it 'should show the elements currently stored in our LRU cache'
    end
end