# For this HW assignment, we're going to use an array to implement a basic LRU Cache
# For this ex, we will NOT use a hash-map or a linked list
# We will assume our input is limited to Integers, Strings, Arrays, Symbols, and Hashes
# We will allow the user to set the size of the cache

class LRU_Cache
    def initialize (cache_size = 4)
        @cache = Array.new(cache_size)
    end

    def size
        @cache.length
    end

    def count
        @cache.select{ |ele| ele != nil}.length
    end

    def add(ele)
    end

    def show
    end

    private
end