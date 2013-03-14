App.IndexController = Em.ArrayController.extend
  content: []
  searchTerm: "With The Lightnings" 
  service: null
  valueChanged: false
  stObserver: ( ->
    this.service.find(@.get('searchTerm'), this)
    this.set("valueChanged", false)
  ).observes('valueChanged')
