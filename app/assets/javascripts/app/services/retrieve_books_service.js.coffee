App.RetrieveBooksService = Em.Object.extend
  searchTerm: ""
  bookCollection: []
  find: (title, controller) ->
    # console?.log "finder"
    enc_title = encodeURIComponent(title)
    self = this
    jQuery.ajax("/api/books/#{enc_title}.json",
      type: 'GET',
      success: (data) ->
        parsed = self.parseData(data) 
        controller.set("content", parsed) 
      )

  parseData: (raw_json) ->
    books = []
    for book in raw_json then do (book) =>
      model =  App.Book.create(book) 
      model.set('loaded', true)
      model.author = book.volume_info?.authors?[0]
      model.thumbLink = book.volume_info?.imageLinks?.smallThumbnail
      books.push model
    return books


    # http://localhost:3000/api/books/lightnings.json