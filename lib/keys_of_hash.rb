class Hash
#  def keys_of(*arguments)
#    self.collect {|k, e| k if arguments.include?(e)}.keep_if {|e| e}
#  end
  def keys_of(*arguments)
    array = []
    #use self since each closes the scope. 
    self.each do |key, value|
#      if arguments.include?(value)
#        array << key 
        if value == arguments
          array.push(key)
      end
    end
    array
  end
end

