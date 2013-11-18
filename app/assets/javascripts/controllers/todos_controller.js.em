class Embertodo.TodosController extends Ember.ArrayController

  +computed @each.isCompleted
  remaining: ->
    @filterBy('isCompleted', false).length

  +computed remaining
  inflection: ->
    if @remaining == 1 then 'item' else 'items'

  +computed completed
  hasCompleted: ->
    @completed > 0

  +computed @each.isCompleted
  completed: ->
    @filterBy('isCompleted', true).length

  actions:
    clearCompleted: ->
      @filterBy('isCompleted', true).invoke('deleteRecord').invoke 'save'


    createTodo: ->
      title = @newTitle
      return unless title.trim()

      todo = @store.createRecord 'todo',
        title: title,
        isCompleted: false
      @newTitle = ''
      todo.save()