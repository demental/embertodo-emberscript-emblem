class Embertodo.EditTodoView extends Ember.TextField
  didInsertElement: ->
    @$().focus()

Ember.Handlebars.helper 'edit-todo', Embertodo.EditTodoView