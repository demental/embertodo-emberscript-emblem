class Embertodo.TodosRoute extends Ember.Route
  model: ->
    @store.find('todo')

class Embertodo.TodosIndexRoute extends Ember.Route
  model: ->
    @modelFor 'todos'


class Embertodo.TodosActiveRoute extends Ember.Route
  model: ->
    @store.filter 'todo', (todo) ->
      !todo.get 'isCompleted'

  renderTemplate: (controller)->
    @render 'todos/index', controller: controller


class Embertodo.TodosCompletedRoute extends Ember.Route
  model: ->
    @store.filter 'todo', (todo) ->
      todo.get 'isCompleted'

  renderTemplate: (controller)->
    @render 'todos/index', controller: controller
