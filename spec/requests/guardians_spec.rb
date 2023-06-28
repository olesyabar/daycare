require 'rails_helper'

RSpec.describe "Guardians", type: :request do
  describe "get guardians_path" do
    it "renders the index view" do
      FactoryBot.create_list(:guardian, 10)
      get guardians_path
      expect(response).to render_template(:index)
    end
  end

  describe "get guardian_path" do
    it "renders the :show template" do
      guardian = FactoryBot.create(:guardian)
      get guardian_path(id: guardian.id)
      expect(response).to render_template(:show)
    end
  end

  describe "get new_guardian_path" do
    it "renders the :new template" do
      get new_guardian_path
      expect(response).to render_template(:new)
    end
  end

  describe "get edit_guardian_path" do
    it "renders the :edit template" do
      guardian = FactoryBot.create(:guardian)
      get edit_guardian_path(id: guardian.id)
      expect(response).to render_template(:edit)
    end
  end

  describe "post guardians_path with valid data" do
    it "saves a new entry and redirects to the show path for the entry" do
      guardian_attributes = FactoryBot.attributes_for(:guardian)
      expect { post guardians_path, params: {guardian: guardian_attributes}
    }.to change(Guardian, :count)
      expect(response).to redirect_to guardian_path(id: Guardian.last.id)
    end
  end

  describe "post guardians_path with invalid data" do
    it "does not save a new entry or redirect" do
      guardian_attributes = FactoryBot.attributes_for(:guardian)
      guardian_attributes.delete(:first_name)
      expect { post guardians_path, params: {guardian: guardian_attributes}
    }.to_not change(Guardian, :count)
      expect(response).to render_template(:new)
    end
  end

  describe "put guardian_path with valid data" do
    it "updates an entry and redirects to the show path for the guardian" do
      guardian = FactoryBot.create(:guardian)
      put guardian_path(guardian.id), params: {guardian: {first_name: "Stephany"}}
      guardian.reload
      expect(guardian.first_name).to eq("Stephany")
      expect(response).to redirect_to guardian_path(id: Guardian.last.id) 
    end
  end

  describe "put guardian_path with invalid data" do
    it "does not update the guardian record or redirect" do
      guardian = FactoryBot.create(:guardian)
      put guardian_path(guardian.id), params: {guardian: {last_name: "1234"}}
      guardian.reload
      expect(guardian.last_name).not_to eq("1234")
      expect(response).to render_template(:edit) 
    end
  end

  describe "delete a guardian record" do
    it "deletes a guardian record" do
      guardian = FactoryBot.create(:guardian)
      expect { delete guardian_path(guardian.id)
    }.to change(Guardian, :count)
      expect(response).to redirect_to guardians_path
    end
  end
end