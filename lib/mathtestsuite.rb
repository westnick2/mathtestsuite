module Mathtestsuite

  class String

    def red
      "\e[31m#{self}\e[0m"
    end

    def green
      "\e[32m#{self}\e[0m"
    end

    def brown
      "\e[33m#{self}\e[0m"
    end

    def blue
      "\e[34m#{self}\e[0m"
    end

    def magenta
      "\e[35m#{self}\e[0m"
    end

    def cyan
      "\e[36m#{self}\e[0m"
    end

    def gray
      "\e[37m#{self}\e[0m"
    end

    def bg_black
      "\e[40m#{self}\e[0m"
    end

    def bg_red
      "\e[41m#{self}\e[0m"
    end

    def bg_green
      "\e[42m#{self}\e[0m"
    end

    def reverse_color
      "\e[7m#{self}\e[27m"
    end

  end

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
