require 'minitest/autorun'
require 'awesome_print'
require File.join(File.dirname(__FILE__), 'todo.rb')

describe Todo do
  before do
    @todo = Todo.new
    @todo.clear
     end

  it "adds a new todo" do
    @todo.add 'Dette er todo nr 5'
    @todo.items.size.must_equal 1
    @todo.list
    Todo.new.clear
  end

#  it 'lists all todoitems' do
#    @todo.list
#  end
end
