App.AccordionView = Em.View.extend
  templateName: "accordion/accordion"
  id: "accordion3"
  optionIdPath: "content.id"
  optionTitlePath: "content.title"
  optionBodyPath: "content.description"


App.AccItemView = Em.View.extend
  classNames: ['accordion-group']
  templateName: 'accordion/acc_item'
  content: null 

  init: ->
    # debugger
    @.idPathDidChange()
    @.titlePathDidChange()
    @.bodyPathDidChange()
    @._super() 

  idPathDidChange: Ember.observer (->
    idPath = @.get("parentView.optionIdPath")
    return unless idPath
    Ember.defineProperty this, "idField", Ember.computed(->
        @.get idPath
      ).property(idPath)
    Ember.defineProperty this, "href", Ember.computed(->
        "#"+@.get idPath
      ).property(idPath)
    ), "parentView.optionIdPath"

  titlePathDidChange: Ember.observer (->
    titlePath = @.get("parentView.optionTitlePath")
    return unless titlePath
    Ember.defineProperty this, "header", Ember.computed(->
        @.get titlePath
      ).property(titlePath)
    ), "parentView.optionTitlePath"

  bodyPathDidChange: Ember.observer (->
    bodyPath = @.get("parentView.optionBodyPath")
    return unless bodyPath 
    Ember.defineProperty this, "body", Ember.computed(->
        @.get bodyPath
      ).property(bodyPath)
    ), "parentView.optionBodyPath"

  didInsertElement: ->
    accordion_id = "#"+@.get("parentView.id")
    Ember.run.next this, ->
      @.$('.collapse').collapse({parent:accordion_id})
