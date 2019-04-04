location.reload() if process.env.NODE_ENV == 'development' && window.vm # for vue

window.vm = new Vue(
  el: '#vue'
  data:
    classNames: []
  mounted: ->
    for pbsz in ['parent-content-box', 'parent-border-box']
      for bsz in ['content-box', 'border-box', 'inherit']
        for target in ['', 'with-pseudo']
          @classNames.push([pbsz, bsz, target].join(' '))
    return
)
