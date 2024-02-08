# frozen_string_literal: true

# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(build(:user)).to be_valid
  end

  describe 'devise modules' do
    subject { build(:user) }

    # Check for Devise modules by verifying the response to typical methods
    it 'includes database_authenticatable' do
      expect(subject).to respond_to(:encrypted_password)
    end

    it 'includes registerable' do
      expect(described_class).to respond_to(:new_with_session)
    end

    it 'includes recoverable' do
      expect(subject).to respond_to(:reset_password_sent_at)
      expect(subject).to respond_to(:reset_password_token)
    end

    it 'includes rememberable' do
      expect(subject).to respond_to(:remember_created_at)
    end

    it 'includes validatable' do
      expect(subject).to respond_to(:email)
    end
  end
end
