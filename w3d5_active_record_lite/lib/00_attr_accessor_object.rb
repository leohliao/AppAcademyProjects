class AttrAccessorObject
  def self.my_attr_accessor(*names)
    # search version
    # names.each do |name|
    #   self.class_eval("def #{name};@#{name};end")
    #   self.class_eval("def #{name}=(val);@#{name}=val;end")
    # end
    names.each do |name|
      define_method(name) do
        instance_variable_get("@#{name}")
      end

      define_method("#{name}=") do |value|
        instance_variable_set("@#{name}", value)
      end
    end
  end
end
