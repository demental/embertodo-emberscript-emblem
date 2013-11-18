#= require jquery
#= require jquery_ujs
#= require bootstrap
#= require handlebars.runtime
#= require handlebars
#= require ember
#= require ember-data
#= require_self
#= require embertodo

# for more details see: http://emberjs.com/guides/application/
window.Embertodo = Ember.Application.create()

class Embertodo.ApplicationAdapter extends DS.FixtureAdapter

#= require_tree .