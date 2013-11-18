class Embertodo.TodoController extends Ember.ObjectController

  +computed isCompleted
  isCompleted: (key, value) ->
    if value?
      @model.isCompleted = value
      @model.save()
    @model.isCompleted

  actions:
    editTodo: ->
      @isEditing = true

    acceptChanges: ->
      @isEditing = false

      if Ember.isEmpty @model.title
        @send 'removeTodo'
      else
        @model.save()

  isEditing: false
