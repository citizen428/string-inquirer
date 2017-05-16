class String
  # Wraps a string for easier equality tests.
  #   
  # ```
  # inquirer = String::Inquirer.new("test")
  # inquirer.test? #=> true
  # inquirer.foo?  #=> false
  # ```
  class Inquirer
    # :nodoc:
    property wrapped : String

    # Wraps the provided string
    def initialize(@wrapped)
    end

    # :nodoc:
    private def test(string)
      wrapped == string
    end

    # Inspects the provided call name and raises if the call name does not finish in '?'.
    macro method_missing(call)
      {% if call.name.ends_with?('?') %}
        test({{call.name.id.stringify}}.chomp('?'))
      {% else %}
        super
      {% end %}
    end
  end
end