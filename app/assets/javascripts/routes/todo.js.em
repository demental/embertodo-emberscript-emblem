class Embertodo.TodosRoute extends Ember.Route
  model: ->
    @store.find('todo')