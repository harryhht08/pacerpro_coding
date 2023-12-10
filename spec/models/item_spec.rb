require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { Item.create(name: 'Test Item') }

  describe '#soft_delete' do
    it 'marks an item as deleted' do
      item.soft_delete
      expect(item.deleted_at).not_to be_nil
    end
  end

  describe '#restore' do
    it 'restores a soft-deleted item' do
      item.soft_delete
      item.restore
      expect(item.deleted_at).to be_nil
    end
  end

  describe 'default scope' do
    it 'excludes deleted items from default queries' do
      item.soft_delete
      expect(Item.all).not_to include(item)
    end
  end
end
