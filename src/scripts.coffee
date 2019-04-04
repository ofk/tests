location.reload() if process.env.NODE_ENV == 'development' && window.vm

window.vm = new Vue(
  el: '#vue'
  data:
    loading: false
    contents: []
  methods:
    load: ->
      @loading = true
      $.getJSON('https://api.github.com/repos/ofk/tests/contents/src').then (contents) =>
        @contents = (content for content in contents when content.type == 'dir' && /^\d+/.test(content.name))
        @loading = false
        return
      return
  mounted: ->
    @load()
    return
)
