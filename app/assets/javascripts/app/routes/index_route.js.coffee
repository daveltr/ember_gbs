App.IndexRoute = Em.Route.extend
  # enter: ->
  #   console?.log "index route"
  setupController: (controller) ->
    # console?.log "setting controller" 
    rbs = App.RetrieveBooksService.create()
    controller.set("service", rbs)
    rbs.find(controller.get('searchTerm'), controller)

    

