extends Node2D

signal unit_died

func _ready():
    get_node("Area2D").connect("body_entered", self, "_on_body_entered")
    
func _on_body_entered(body):
    # Pattern3
    emit_signal("unit_died")
    # Pattern1, tell the parent
    get_parent().unit_died(self)
    
    
