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
        # adding an element that is already in the cache
        if @cache.include?(ele)
            if @cache.include?(nil) #partially full cache
                @cache.delete(ele)
                @cache << nil
                @cache[@cache.index(nil)] = ele
            else # full cache
                @cache.delete(ele)
                @cache << ele
            end
        else
            # adding a new element to the cache
            if @cache.include?(nil)
                @cache[@cache.index(nil)] = ele
            else
                @cache.shift
                @cache << ele
            end
        end
    end

    def show
        @cache
    end

    def empty?
        @cache.all?{ |ele| ele == nil}
    end
end