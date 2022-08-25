require 'rails_helper'

RSpec.describe Subscriber do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email).case_insensitive }
  it { should_not allow_value('invalid_email_format').for(:email) }
end
