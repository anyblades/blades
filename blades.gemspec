# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "blades"
  spec.version       = "2.4.7"
  
  spec.authors       = ["Anton Staroverov"]
  spec.homepage      = "https://blades.ninja/"
  spec.license       = "MIT"
  spec.summary       = "Fully compatible and actively maintained successor to Pico CSS."

  spec.files = Dir.glob("{_includes,css}/**/*")
  # puts "spec.files: #{spec.files.inspect}"

  spec.add_runtime_dependency "jekyll", ">= 3.5", "< 5.0"
end
