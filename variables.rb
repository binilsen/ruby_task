# types of variables in ruby
=begin 
1.global
2.constant
3.local variables
4.instance 
5.class
=end

class User
    MSG='Hi User'
    @@user_greet='Welcome to OX Hosting !' # class variable
    attr_reader :name,:password
    def initialize name,password
        @name=name #instance var
        @password=password #instance var
    end
    def self.greet 
        @@user_greet
    end
    def get_all_users
        puts 'All users:'
         $users.each {|user| puts user.name}
    end
end
$users=[] #global var
# new user
def create_user 
    puts User.greet
    for i in 0..3
        $users[i] = User.new "Admin#{i}",123
    end
    # Here i is a local var and can be only accessed inside the method
end

puts User::MSG
create_user # creating dummy users

$users[0].get_all_users
