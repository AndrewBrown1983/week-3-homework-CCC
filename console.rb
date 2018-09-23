require_relative('./models/customer')
require_relative('./models/film')
require_relative('./models/ticket')

require('pry-byebug')

Film.delete_all()
Customer.delete_all()
Ticket.delete_all()

film1 = Film.new({'title' => 'The Godfather', 'price' => 10})
film1.save()
film2 = Film.new({'title' => 'Dumb and Dumber', 'price' => 8})
film2.save()
film3 = Film.new({'title' => 'Taxi Driver', 'price' => 9})
film3.save()
film4 = Film.new({'title' => 'Catch Me If You Can', 'price' => 7})
film4.save()

customer1 = Customer.new({'name' => 'Mick', 'funds' => 10})
customer1.save()
customer2 = Customer.new({'name' => 'Keith', 'funds' => 120})
customer2.save()
customer3 = Customer.new({'name' => 'Brian', 'funds' => 90})
customer3.save()
customer4 = Customer.new({'name' => 'Charlie', 'funds' => 70})
customer4.save()


ticket1 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer1.id})
ticket1.save()
ticket2 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer1.id})
ticket2.save()
ticket3 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer3.id})
ticket3.save()
ticket4 = Ticket.new({'film_id' => film3.id, 'customer_id' => customer4.id})
ticket4.save()
ticket5 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer3.id})
ticket5.save()
ticket6 = Ticket.new({'film_id' => film2.id, 'customer_id' => customer4.id})
ticket6.save()
ticket7 = Ticket.new({'film_id' => film1.id, 'customer_id' => customer4.id})
ticket7.save()
ticket8 = Ticket.new({'film_id' => film4.id, 'customer_id' => customer4.id})
ticket8.save()

# customer1.name = 'Jimmy'
# customer1.update()
#
# film1.price = 12
# film1.update()
#
# ticket1.film_id = film2.id
# ticket1.update()

# film1.delete_one()
# customer1.delete_one()
# ticket1.delete_one()

film_list = Film.all()
customer_list = Customer.all()
ticket_list = Ticket.all()

filmtest = customer1.films()
cust_test = film1.customers()
binding.pry
nil
