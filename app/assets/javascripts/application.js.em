#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require handlebars.runtime
#= require handlebars
#= require ember
#= require ember-data
#= require localstorage_adapter
#= require_self
#= require embertodo

# for more details see: http://emberjs.com/guides/application/
window.Embertodo = Ember.Application.create()

class Embertodo.ApplicationAdapter extends DS.LSAdapter
  namespace: 'todos-emberjs'

#= require_tree .