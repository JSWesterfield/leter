require 'rails_helper'

Rspec.describe 'Items API' do
    # Initialize the test data
    let!(:todo) { create(:todo) }
    let!(:items) { create_items(:item, 20, todo_id: todo.id) }
    let(:todo_id) { todo.id }
    let(:id) { items.first.id }


    # Test suite for GET /todos/:todo_id/items
    describe 'GET /todos/:todo_id/items' do
        before { get "/todos/#{todo_id}/items" }

        context 'when todo exists' do
            let(:todo_id) { 0 }    # Test suite for GET /todos/:todo_id/items
            describe 'GET /todos/:todo_id/items' do
                before { get "/todos/#{todo_id}/items" }
        
                context 'when todo exists' do
                    let(:todo_id) { 0 }

                    it 'returns status code 404' do
                        expect(response).to match(/Couldn't find Todo/)
                    end
                end
            end

            
            #Test suite for GET /todos/:todo_id/items/:id
            describe 'GET /todos/:todo_id/items/:id' do
                before { get "/todos/#{todo_id}/items/#{id}" }

                context 'when todo item exists' do
                    
            
