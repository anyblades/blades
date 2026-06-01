# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "blades"
  spec.version       = "2.3.0"
  spec.authors       = ["Anton Staroverov"]

  spec.summary       = "Fully compatible and actively maintained successor to Pico CSS."
  spec.homepage      = "https://github.com/anyblades/blades"
  spec.license       = "MIT"

  spec.files = Dir.glob("{_includes,css}/**/*")
  # puts "spec.files: #{spec.files.inspect}"

  spec.add_runtime_dependency "jekyll", ">= 3.5", "< 5.0"
end
