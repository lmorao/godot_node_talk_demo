extends Node2D


func _ready():
    get_node("Area2D").connect("body_entered", self, "_on_body_entered")
    
func _on_body_entered(body):
    # warn the game that player takes damage
    # Pattern1, tell the parent
    get_parent().body_entered_lava(body, self)
