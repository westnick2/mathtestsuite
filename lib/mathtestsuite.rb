require 'string'
module Mathtestsuite

  def assert(expected:, actual:)
    success = expected == actual
    print success ? '.'.cyan : 'F'.red
     {success: success, expected: expected, actual: actual}
  end

  def run_tests
    specs = []
    self.class.instance_methods(false ).each do |method_name|
      spec = public_send(method_name)
      spec[:method_name] = method_name
      specs << spec
    end
    puts
    errored_specs = specs.reject { |spec| spec[:success] }
    errored_specs.each { |spec|
      puts "FAILED: #{spec[:method_name]}".red
      puts "EXPECTED: #{spec[:expected]}".blue
      puts "ACTUAL: #{spec[:actual]}".cyan
    }
  end
end
