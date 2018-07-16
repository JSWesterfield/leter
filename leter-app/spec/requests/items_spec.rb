require 'rails_helper'

Rspec.describe 'Items API' do
    # Initialize the test data
    let!(:todo) { create(:todo) }
    let!(:items) { create_items(:item, 20, todo_id: todo.id) }
    let(:todo_id) { todo.id }
    let(:id) { items.first.id }




            
