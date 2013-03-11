App.BookCollectionView = Em.View.extend
  templateName: 'books/collectionView'
  contentObserver: ( ->
    Ember.run.next this, ->
        @.$('.collapse').collapse()
  ).observes('controller.content')
  