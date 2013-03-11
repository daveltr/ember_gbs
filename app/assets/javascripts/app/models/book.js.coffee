App.Book = Em.Object.extend
  title: ""
  href: ( ->
    "#"+@.get('id')
    ).property('id')