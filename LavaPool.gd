extends Node2D



func _ready():
    pass # Replace with function body.

func body_entered_lava(body, lava):
    # Pattern2, tell the unit manager
    Globals.nodes.unit_manager.body_entered_lava(body)
