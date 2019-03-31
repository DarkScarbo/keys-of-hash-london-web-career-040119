class Hash
#  def keys_of(*arguments)
#    self.collect {|k, v| k if arguments.include?(v)}.keep_if {|v| v}
#  end
  def keys_of(*arguments)
    array = []
    #use self since each closes the scope. 
    arguments.collect do |key, value|
      if arguments.include?(value)
        array << key 
      end
    end
    array
  end
end

