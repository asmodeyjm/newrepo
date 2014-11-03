puts "What would you like to do? Create, List, Update, or Vote"
ans = gets.chomp

Politician = Struct.new :name, :party

Person = Struct.new :name, :politics

Menu = Struct.new :prompt, :options do

  def run
     puts prompt + "(" options.keys.join(', ') + ") "
     ans = gets.chomp
     val = options[ans]
     case val
     when Menu then val.run
     when Hash then
      d = {}
      val.each {|key,menu| d[key] = menu.run}
      d
    when :store then ans end
    end
    end
  end

end


m = Menu.new 'What would you like to do?', {

  'Create' => Menu.new 'What would you like to create?', {
    'Politician' => { 
      'name' =>  Menu.new('Name?', {}),
      'party' => Menu.new 'Party' {}
      'Democrat' => {}
      'Republican' =>{}

      },
      'Person' => 
      [Menu.new('Name?', {})
        Menu.new 'Politics?',{}
        'Liberal' => {},
        'Conservative'=>{},
        'Tea Party' => {},
        'Socialist' => {},
        'Neutral' 

      }

      },
      'List' => {},
      'Update' => {},
      'Vote' => {}


    }








# If answer1 = "Create"
# puts "What would you like to create? Politician or Person"
