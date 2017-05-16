require "./string/inquirer"

class String
  # Wraps a string in an instance of `String::Inquirer`
  def inquiry
    String::Inquirer.new(self)
  end
end