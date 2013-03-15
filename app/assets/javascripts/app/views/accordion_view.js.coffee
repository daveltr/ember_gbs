App.AccordionView = Em.View.extend
  templateName: "accordion"
  id: "accordion3"
  optionIdPath: "content.id"
  optionTitlePath: "content.title"
  optionBodyPath: "content.description"

App.AccItemView = Em.View.extend
  classNames: ['accordion-group']
  templateName: 'acc_item'
  content: null 

  init: ->
    # debugger
    @.idPathDidChange()
    @.titlePathDidChange()
    @.bodyPathDidChange()
    @._super() 

  idPathDidChange: Ember.observer (->
    idPath = @.get("parentView.optionIdPath")
    Ember.defineProperty this, "idField", Ember.computed(->
        @.get idPath
      ).property(idPath)
    Ember.defineProperty this, "href", Ember.computed(->
        "#"+@.get idPath
      ).property(idPath)
    ), "parentView.optionIdPath"

  titlePathDidChange: Ember.observer (->
    titlePath = @.get("parentView.optionTitlePath")
    Ember.defineProperty this, "header", Ember.computed(->
        @.get titlePath
      ).property(titlePath)
    ), "parentView.optionTitlePath"

  bodyPathDidChange: Ember.observer (->
    bodyPath = @.get("parentView.optionBodyPath")
    Ember.defineProperty this, "body", Ember.computed(->
        @.get bodyPath
      ).property(bodyPath)
    ), "parentView.optionBodyPath"

  didInsertElement: ->
    accordion_id = "#"+@.get("parentView.id")
    Ember.run.next this, ->
      @.$('.collapse').collapse({parent:accordion_id})
`