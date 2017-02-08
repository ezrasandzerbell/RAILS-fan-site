require 'rails_helper'

describe Work do
  it { should validate_presence_of :name }
  it { should validate_presence_of :image }
  it { should validate_presence_of :media }
  it { should validate_presence_of :published }
  it { should validate_presence_of :rating }
  it { should validate_presence_of :content }
  it { should belong_to :user }
end
