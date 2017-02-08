require 'rails_helper'

describe Review do
  it { should validate_presence_of :name }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :content }
  it { should belong_to :work }
  it { should belong_to :user }
end
