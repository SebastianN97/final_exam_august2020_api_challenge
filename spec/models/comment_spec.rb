require 'rails_helper'

Rspec.describe Comment, type: :model do
  describe "Articles has db columns" do
    it { is_expected.to have_db_column :article }
  end

  describe "Validations" do
    it { is_expected.to validate_presence_of :article }
  end

  describe "Factory" do
    it "Should have valid factory" do
      expect(create(:comment)).to be_valid
    end
  end
end