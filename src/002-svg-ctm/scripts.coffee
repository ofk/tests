location.reload() if process.env.NODE_ENV == 'development' && window.vm # for vue

window.vm = new Vue(
  el: '#vue'
  data:
    outerCTM: null
    innerCTM: null
  mounted: ->
    toString = (m) ->
      """
      [#{m.a} #{m.c} #{m.e}]
      [#{m.b} #{m.d} #{m.f}]
      """
    @outerCTM = toString(@$refs.outer.getScreenCTM())
    @innerCTM = toString(@$refs.inner.getScreenCTM())
)
