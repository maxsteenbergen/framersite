bg = new BackgroundLayer 
	backgroundColor: "#2DD7AA"

layerA = new Layer backgroundColor: "#fff", borderRadius: 4
layerA.center()

window.onmousemove = (event) ->
	delta =
		x: layerA.midX - event.clientX
		y: layerA.midY - event.clientY
	
	dist = Math.abs(delta.x) + Math.abs(delta.y)
	alpha = Utils.modulate dist, [0, 150], [0, .2], true
	
	layerA.shadowX = Utils.modulate delta.x, [0, Screen.width /2], [0, 50]
	layerA.shadowY = Utils.modulate delta.y, [0, Screen.height/2], [0, 50]
	layerA.shadowBlur = Utils.modulate dist, [0, 100], [5, 15]
	layerA.shadowColor = "rgba(0,0,0,#{alpha})"