class Embertodo.TodosController extends Ember.ArrayController
  actions:
    createTodo: ->
      title = @newTitle
      return unless title.trim()

      todo = @store.createRecord 'todo',
        title: title,
        isCompleted: false

      @newTitle = ''

      todo.save()