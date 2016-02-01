require 'spec_helper'

describe Item do
  before { @item = FactoryGirl.build(:item) }

  subject { @item }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }

  it { should be_valid }
end