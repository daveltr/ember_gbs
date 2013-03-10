class FindBookService 
  def initialize()

  end
  def by_title(title, options={})
    GoogleBooks.search(title) 
  end
  # def find_book_by_title(title, options={}, client=GetGoodreadsClient.new().get_client)
  #   client.book_by_title(title)
  # end
end
