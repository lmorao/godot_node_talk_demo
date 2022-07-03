extends Node2D


var speed = 200
func _ready():
    pass # Replace with function body.

func _process(delta):
    var node = "World/UnitManager/Player"
    if Input.is_action_pressed("ui_down"):
        #node.position.y = node.position.y + speed * delta
        Globals.nodes.unit_manager.move_player( Vector2(0, speed * delta))
    if Input.is_action_pressed("ui_up"):
        #node.position.y = node.position.y - speed * delta
        Globals.nodes.unit_manager.move_player( Vector2(0, -speed * delta))
    if Input.is_action_pressed("ui_right"):
        #ode.position.x = node.position.x + speed * delta
        Globals.nodes.unit_manager.move_player( Vector2(speed * delta, 0))
    if Input.is_action_pressed("ui_left"):
        #ode.position.x = node.position.x - speed * delta
        Globals.nodes.unit_manager.move_player( Vector2(-speed * delta, 0))
