#!/usr/bin/env ruby
class Todo
  def initialize(item)
    @item = item
  end

  def to_s

  end
end

def intro
  puts "hei"
end

case ARGV[0]
  when 'add', 'a'
    puts "Legge til nytt item"
  when 'list', 'l'
    puts "Vise liste over todo items"
  when 'delete', 'del', 'd'
    puts "Slette valgt todo"
  when 'edit' 'e'
    puts "Edit valgte todo"
  when 'clear'
    puts "Slette hele todolista"
  else
    intro
end
