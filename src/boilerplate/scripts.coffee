location.reload() if process.env.NODE_ENV == 'development' && window.vm # for vue

console.info 'This is boilerplate.'

window.vm = new Vue(
  el: '#vue'
  data:
    date: null
  computed:
    time: ->
      "#{@date.getHours()}:#{@date.getMinutes()}:#{@date.getSeconds()}" if @date
  mounted: ->
    setInterval =>
      @date = new Date
    , 1000
)
