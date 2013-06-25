require "rmaybe/version"

class Never
  attr_accessor :value

  instance_methods.each do |v|
    undef_method(v) unless %w(object_id __id__ __send__).include?(v.to_s)
  end

  def method_missing(*args)
    self
  end

  def end
    nil
  end

  def maybe
    self
  end

  def maybe?
    true
  end
end

class Maybe < Never
  def initialize(value)
    @value = value
  end

  def method_missing(*args, &block)
    @value ? Maybe.new(@value.__send__(*args, &block)) : Never.new
  end

  def end
    @value
  end
end

class Object
  def maybe
    Maybe.new(block_given? ? yield : self)
  rescue Exception
    Never.new
  end

  def maybe?
    false
  end
end



