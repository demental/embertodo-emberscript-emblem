class Embertodo.TodosController extends Ember.ArrayController

  +computed @each.isCompleted
  remaining: ->
    @filterBy('isCompleted', false).length

  +computed remaining
  inflection: ->
    if @remaining == 1 then 'item' else 'items'

  actions:
    createTodo: ->
      title = @newTitle
      return unless title.trim()

      todo = @store.createRecord 'todo',
        title: title,
        isCompleted: false

      @newTitle = ''

      todo.save()