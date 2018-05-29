extends Area2D

export (int) var SPEED  # how fast the player will move (pixels/sec)
var screensize  # size of the game window


func _ready():
    screensize = get_viewport_rect().size
	
	
	func _process(delta):
    var velocity = Vector2() # the player's movement vector
    if Input.is_action_pressed("ui_right"):
        velocity.x += 1
    if Input.is_action_pressed("ui_left"):
        velocity.x -= 1
    if Input.is_action_pressed("ui_down"):
        velocity.y += 1
    if Input.is_action_pressed("ui_up"):
        velocity.y -= 1
    if velocity.length() > 0:
        velocity = velocity.normalized() * SPEED
        $AnimatedSprite.play()
    else:
        $AnimatedSprite.stop()