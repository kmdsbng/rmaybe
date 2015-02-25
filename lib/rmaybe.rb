require "rmaybe/version"

class Never
  attr_accessor :value

  instance_methods.each do |v|
    undef_method(v) unless %w(object_id __id__ __send__).include?(v.to_s)
  end

  def method_missing(*_args)
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
    @value.nil? ? Never.new : Maybe.new(@value.__send__(*args, &block))
  end

  def end
    @value
  end
end

class Object
  def maybe
    self.nil? ? Never.new : Maybe.new(block_given? ? yield : self)
  end

  def maybe?
    false
  end
end



