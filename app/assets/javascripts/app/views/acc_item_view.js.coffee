App.AccItemView = Em.View.extend
  classNames: ['accordion-group']
  templateName: 'acc_item'
  didInsertElement: ->
    console?.log('item die')
    Ember.run.next this, ->
      @.$('.collapse').collapse({parent:"#accordion2"})