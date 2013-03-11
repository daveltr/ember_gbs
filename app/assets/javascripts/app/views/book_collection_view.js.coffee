App.BookCollectionView = Em.View.extend
  templateName: 'books/collectionView'
  didInsertElement: ->
    console?.log('die bcv')
  willRerender: ->
    console?.log('wrr bcv')
