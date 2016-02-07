#!/usr/bin/env ruby
require 'yaml'
class Item
  attr_accessor :value
  def initialize(value)
    @value = value
   # @status = value
  end

  def to_s
   "#{@value}"
  end
end

class Todo

  def initialize(options = {})
    @options, @items = options, []
    is_todo_list_present?
   load_file
  end

  FILE = File.expand_path('.todos')

  def add(todo)
   @items << Item.new(todo)
   save_todo(todo)
  end

  def list

    @items.each_with_index do |todo, index|
      printf "%s: %-#{longest.size+5}s %s\n", index+1, todo.text, todo.context
  #  @items.each do |i|
  #    puts i

    end
  end

  def file
    @file ||= File.exist?(FILE) ? FILE : "#{ENV['HOME']}/.todos"
  end
  private

    def is_todo_list_present?
      return if File.exist?(file)
    end

    def load_file
      File.open(file, 'r') do |f|
        f.each do |line|
          puts line
        end
      end
    end

#Åpner opp lagringsfila og lagrer todo'en
  def save_todo(todo)
    File.open(file, "a") do |f|
      f.write("#{todo} \n")
    end
  end
end

def intro
  line =  "-----------------------------------------"
  puts line
  puts "Welcome to Todo, by Devalo"
  puts line
#  puts "\n"
  puts "Usage:"
#  puts line
  puts " add 'todo'  | Adds a new todo"
  puts " delete 'n'  | Deletes a todo"
  puts " edit 'n'    | Edit a todo"
  puts " done 'todo' | Mark todo as done"
  puts " list        | List all todos"
  puts " clear       | Clear the todolist"
  puts line


end


case ARGV[0]
  when 'add', 'a'
    if ARGV[1] == nil
      puts "No todo added. To add todo, use: 'add', followed with your todo. "
    else
    puts "Lagt til todo: #{ARGV[1]}"
    Todo.new.add(ARGV[1])
    end
  when 'list', 'l'
    puts "Vise liste over todo items"
    Todo.new(:filter => ARGV[1]).list
  when 'done'
    puts "Ferdig med todo"
  when 'delete', 'del', 'd'
    puts "Slette valgt todo"
  when 'edit', 'e'
    puts "Edit valgte todo"
  when 'clear'
    puts "Slette hele todolista"
  else
    intro
end
