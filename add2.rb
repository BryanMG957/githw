# # def add_two(number)
# #   if not number.respond_to? :+
# #     raise ArgumentError, "I am on a boat"
# #   elsif number == 0
# #     raise "I just don't like zero '0'... Why do want to put '0'... Why? Seriously though... "
# #   end
# #   number + 2
# # end
# #
# # begin
# #   puts add_two(0)
# # rescue ArgumentError => e
# #   puts "Sorry bro!, your arguments are dumb... #{e.message}, peace out! :D"
# # rescue => e
# #   puts "Why 0? Why you want to put 0"
# #   puts e.backtrace
# # end
#
# def a
#   b
# end
#
# def b
#   c
# end
#
# def c
#   d
# end
#
# def d
#   raise "Boom Shakalaka!"
# end
#
# begin
# a
# rescue => e
#   puts e.backtrace
# end
#

begin
  1/0
rescue ZeroDivisionError
  puts "No one on Earth can divide by zer0, what's wrong with you.."
end
