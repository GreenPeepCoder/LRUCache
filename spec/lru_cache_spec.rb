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
        it 'should return the number of elements currently stored in our LRU cache' do
            johnny_cache.add("I walk the line")
            johnny_cache.add(5)

            expect(johnny_cache.count).to eq(2)
        end
    end

    describe "#add" do
        it 'should be able to add elements to the cache, even if they differ in type' do
            expect {johnny_cache.add("hello")}.not_to raise_error
            expect {johnny_cache.add(:test)}.not_to raise_error
        end

        it 'does not allow there to be duplicate elements in the cache' do
            johnny_cache.add("I walk the line")
            johnny_cache.add(:ring_of_fire)
            johnny_cache.add("I walk the line")
            johnny_cache.add({a: 1, b: 2, c: 3})

            expect(johnny_cache.count).to eq(3)
        end

        it 'should store the most recently used item at the right side of the array' do
            johnny_cache.add([1,2,3])
            johnny_cache.add(5)
            johnny_cache.add(-5)
            johnny_cache.add({a: 1, b: 2, c: 3})
            johnny_cache.add([1,2,3,4])
            johnny_cache.add("I walk the line")
            johnny_cache.add(:ring_of_fire)
            johnny_cache.add("I walk the line")
            johnny_cache.add({a: 1, b: 2, c: 3})

            expect(johnny_cache.show.first).to eq([1,2,3,4])
            expect(johnny_cache.show.last).to eq({a: 1, b: 2, c: 3})
        end
    end
end