# -*- encoding: utf-8 -*-
require 'spec_helper'
require 'rmaybe'


describe 'maybe' do
  it 'end method returns actual value' do
    "hoge".maybe.upcase[0..2].end.should eq('HOG')
  end

  it 'nil.any_method return nil' do
    [0].maybe[1].next.end.should eq(nil)

  end

  it 'throws no method error' do
    lambda {
      Rational(2, 5).maybe.invalid_method.end
    }.should raise_error(NoMethodError)

  end

end

