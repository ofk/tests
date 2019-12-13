location.reload() if process.env.NODE_ENV == 'development' && window.vm # for vue

window.vm = new Vue(
  el: '#vue'
  data:
    logs: []
  methods:
    logging: (evt) ->
      type = evt.type
      tag = evt.currentTarget.tagName
      if type == 'pointerdown' && tag == 'svg'
        evt.currentTarget.setPointerCapture(evt.pointerId)
      if type == 'pointerup' && tag == 'svg'
        evt.currentTarget.releasePointerCapture(evt.pointerId)
      @logs.unshift(
        type: type
        tag: tag
      )
      return
)
