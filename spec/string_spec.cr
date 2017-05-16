require "./spec_helper"

describe String do
  wrapped = "test".inquiry

  it "wraps a string in an instance of String::Inquirer" do
    wrapped.test?.should be_true
    wrapped.foo?.should be_false
  end
end