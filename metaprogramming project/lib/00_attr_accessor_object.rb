class AttrAccessorObject
  def self.my_attr_accessor(*names)
   
    names.each do |name|
      ivar = "@#{name}"
      define_method(name) do
        instance_variable_get(ivar.to_sym)
      end
    end
  
    names.each do |name|
      ivar = "@#{name}"
      define_method("#{name}=".to_sym) do |arg|
        instance_variable_set(ivar.to_sym, arg) 
      end
    end

  end
end


