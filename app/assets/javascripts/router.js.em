# For more information see: http://emberjs.com/guides/routing/

Embertodo.Router.map ->
  @resource 'todos', { path: '/' }, ->
    @route 'active'