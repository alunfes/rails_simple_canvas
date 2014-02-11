window.addEventListener "load", (->
  canvas = document.getElementById("c1")
  canvas.width = 200
  canvas.height = 200
  ctx = canvas.getContext("2d")
  ctx.fillStyle = "blue"
  ctx.fillRect 20, 20, 160, 160
  return
), false


window.onload = ->
  draw = (x, y) ->
    ctx.clearRect 0, 0, 600, 500 #一度canvasをクリア
    ctx.fillRect x, y, 50, 50 #pointの座標に描画
    return

  canvas = document.getElementById("c2")
  return false  if not canvas or not canvas.getContext
  ctx = canvas.getContext("2d")
  ctx.fillStyle = "#ceceff"
  point =
    x: 0
    y: 0

  par =
    x: 0
    y: 1

  timer = undefined
  delay = 50
  
  #繰り返し描画を行う関数。
  loop_ = ->
    
    #pointの数値をparの分だけ増やす
    point.x = point.x + par.x
    point.y = point.y + par.y
    
    #描画処理を呼び出す
    draw point.x, point.y
    
    #タイマー(一度クリアしてから再設定。)
    clearTimeout timer
    timer = setTimeout(loop_, delay)
    return

  loop_()
  return