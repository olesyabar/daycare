require 'rails_helper'

RSpec.describe Guardian, type: :model do
  subject {Guardian.new(first_name: "John", last_name: "Smith" )}
  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a first_name" do
    subject.first_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a last_name" do
    subject.last_name=nil
    expect(subject).to_not be_valid
  end
  it "is not valid if first name contains digits" do
    subject.first_name="123456"
    expect(subject).to_not be_valid
  end
  it "is not valid if last name contains special characters" do
    subject.last_name="John!"
    expect(subject).to_not be_valid
  end
end