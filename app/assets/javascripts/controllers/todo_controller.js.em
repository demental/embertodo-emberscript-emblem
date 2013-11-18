class Embertodo.TodoController extends Ember.ObjectController

  +computed isCompleted
  isCompleted: (key, value) ->
    if value?
      @model.isCompleted = value
      @model.save()
    @model.isCompleted