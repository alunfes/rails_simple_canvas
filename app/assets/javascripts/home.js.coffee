window.addEventListener "load", (->
  canvas = document.getElementById("c1")
  canvas.width = 200
  canvas.height = 200
  ctx = canvas.getContext("2d")
  ctx.fillStyle = "blue"
  ctx.fillRect 20, 20, 160, 160
  loop_()
  return
), false
