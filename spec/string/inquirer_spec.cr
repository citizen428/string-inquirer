require "../spec_helper"

describe String::Inquirer do
  inquirer = String::Inquirer.new("test")

  it "returns true for correct strings" do
    inquirer.test?.should be_true
  end

  it "returns false for incorrect strings" do
    inquirer.foo?.should be_false
  end
end
