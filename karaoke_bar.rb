class Bar

  attr_reader :name, :rooms, :till, :guests

  def initialize(name, rooms, till, guests)
    @name = name
    @rooms = rooms
    @till = till
    @guests = guests
  end

  def rent_room (guests, rooms)
    @till += rooms.price
  end

  # def reduce_wallet(guests, rooms)
  #   @guest1.wallet -= rooms.price
  # end

end
