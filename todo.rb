#!/usr/bin/env ruby
class Todo
  def initialize(item)
    @item = []
  end


  def add(todo)

  end
  def to_s

  end
end

class Item

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
    end
  when 'list', 'l'
    puts "Vise liste over todo items"
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
