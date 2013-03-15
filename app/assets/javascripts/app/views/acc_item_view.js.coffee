App.AccItemView = Em.View.extend
  classNames: ['accordion-group']
  templateName: 'acc_item'
  didInsertElement: ->
    Ember.run.next this, ->
      @.$('.collapse').collapse({parent:"#accordion2"})
  # didInsertElement: ->
  #   Ember.run.scheduleOnce 'afterRender', this, () ->
  #     @.$('.collapse').collapse({ parent:'#accordion2'})

 