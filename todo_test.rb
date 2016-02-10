require 'minitest/autorun'
require 'awesome_print'
require File.join(File.dirname(__FILE__), 'todo.rb')

describe Todo do
  before do
    number = 0
    Todo.new.clear
    @todo = Todo.new
    @todo.clear
    5.times do
      @todo.add("Dette er todo nr #{number += 1}")
    end
     end

  it "adds a new todo" do
    @todo.add("En ny todo")
    @todo.items.size.must_equal 6
  end

#  it 'lists all todoitems' do
#    @todo.list
#  end
end
