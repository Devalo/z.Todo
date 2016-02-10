require 'minitest/autorun'
require 'awesome_print'
require File.join(File.dirname(__FILE__), 'z.todo.rb')

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
    @todo.clear
  end

  it "deletes the correct todo" do
    @todo.add("Add new todo")
    @todo.delete "1"
    @todo.items.size.must_equal 6
  end
end
