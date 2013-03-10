App = Ember.Application.create
  rootElement: '#content-app'
  title: "AWS"
  author: "Dave"
  LOG_TRANSITIONS: true
  LOG_BINDINGS: true 
  LOG_STATE_TRANSITIONS: true

  ready: ->
    console?.log("App Ready")

window.App = App
App.deferReadiness();

#= require ./app/store
#= require_tree ./app
#= require router
#= require_self

window.init_app= () ->
  console?.log("Starting App")
  App.advanceReadiness()

# window.init_app()
App.TextField = Em.TextField.extend
  insertNewline:()  -> 
    # console?.log('updated')
    @.get('controller').set('valueChanged', true)
    
