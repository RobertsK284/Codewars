=begin
Implement an EventEmitter class with two methods, on() and trigger().

On allows you to 'subscribe' to an event, passing in a key as a parameter, and a Ruby block to be executed when this particular event is triggered.

The trigger method accepts a key as a parameter. The trigger method calls all blocks that have been subscribed to the key parameter. This method should return an array of all of the blocks for the key parameter.

triggering a key which has no subscribed blocks should return an empty array.

e = EventEmitter.new
e.trigger('key')
# => []
For the solution to be correct, you must be able to subscribe n number of blocks to the same key:

e = EventEmitter.new

e.on('foo') { puts 'foo' }
e.on('foo') { puts 'bar' }
e.on('foo') { puts 'baz' }

e.trigger('foo')
# => 'foo'
# => 'bar'
# => 'baz'
=end

class EventEmitter
  def on(key, &block)
    @hash ||= Hash.new(Array.new)
      if block != nil && @hash.has_key?(key)
        @hash[key] << block
      elsif block != nil && !@hash.has_key?(key)
        @hash[key] = [block]
      end
    Array.new
  end
  
  def trigger(key)
    if @hash == nil || @hash[key] == nil
      return []
    else
      @hash[key].each do |block|
        block.call
      end
    end
  end
end

  e = EventEmitter.new
  e.on('foo') { puts 'foo' }
  e.on('foo') { puts 'bar' }
  e.on('foo') { puts 'baz' }
  e.on('eel') { puts 'give me some eels'}
  e.on('empty')

  
  e.trigger('empty')
  
