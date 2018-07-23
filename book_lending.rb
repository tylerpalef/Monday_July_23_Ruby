# Exercise Code
#////////////////////////////////////////////////////
class Book
# Initial Class

  @@on_shelf = []
  @@on_loan = []
# Class variables = empty arrays

  def due_date
    @due_date
  end
# Reader for instance variable due date

  def initialize(title, author, isbn)
    @title = title
    @author = author
    @isbn = isbn
  end

# Initialize for the Book class

  def due_date=(date)
    @due_date = date
  end
# Writer for instance variable due date

  def lent_out?
    return @@on_loan.include?(self)
  end

# Checking if a book is lent out by using the on class variable
  def borrow
    if self.lent_out? == true
# self. is a class method
      return false
    else
      self.due_date = Book.current_due_date
      @@on_shelf.delete(self)
# Deletes due date since book is returned
      @@on_loan << self
# This adds the book back to the shelf if it reaches the due date
      return true
    end
  end

  def return_to_library
    if self.lent_out? == false
      return false
# False because, no need to return to the library if the book is there
    else
      self.due_date = nil
      @@on_loan.delete(self)
      @@on_shelf << self
      return true
# Placing the book back if no due date
    end
  end

  def self.create(title, author, isbn)
    new_book = self.new(title, author, isbn)
    @@on_shelf.push(new_book)
    return new_book
# This is adding a book to the shelf class variable/array
  end

  def self.available
    return @@on_shelf
# If book is on shelf == available
  end

  def self.borrowed
    return @@on_loan
# If book is on loan ,it is borrowed so not on shelf
  end

  def self.browse
    return @@on_shelf.sample
# .sample just gets a random book
  end

  def self.current_due_date
    due_date=(Time.now + (3*24*3600)) #24*3600 is 24 hrs, multiplied by 3 is 3 days
  end
# .Time allows you to set a time limit

  def self.overdue
    overdue_items = []
    @@on_loan.each do |book|
      if Time.now > book.due_date
        overdue_items << book
# If book loan time exceeds 7 days, we take book and put it back on the array
      end
      return overdue_items
# Remember what the overdue books were
    end
  end
end

#////////////////////////////////////////////////////
# Exercise test questions

sister_outsider = Book.create("Sister Outsider", "Audre Lorde", "9781515905431")
aint_i = Book.create("Ain't I a Woman?", "Bell Hooks", "9780896081307")
if_they_come = Book.create("If They Come in the Morning", "Angela Y. Davis", "0893880221")
puts Book.browse.inspect
puts Book.browse.inspect
puts Book.browse.inspect
puts Book.available.inspect
puts Book.borrowed.inspect
puts sister_outsider.lent_out?
puts sister_outsider.borrow
puts sister_outsider.lent_out?
puts sister_outsider.borrow
puts sister_outsider.due_date
puts Book.available.inspect
puts Book.borrowed.inspect
puts Book.overdue.inspect
puts sister_outsider.return_to_library
puts sister_outsider.lent_out?
puts Book.available.inspect
puts Book.borrowed.inspect
