#!/usr/bin/env ruby

class HelloWorld
  def self.hello(name=nil)
    greeting = name ? name.capitalize : 'World'
    "Hello, #{greeting}!"
  end
end