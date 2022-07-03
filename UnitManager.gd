extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
    Globals.nodes.unit_manager = self

func body_entered_lava(body):
    body.get_parent().take_damage(1)
    if body == Globals.nodes.player.get_node("KinematicBody2D"):
        # Pattern2, tell the manager
        var player_new_hp = Globals.nodes.player.stats.hp
        Globals.nodes.ui.player_set_hp(player_new_hp)
func move_player(vector):
    Globals.nodes.player.position += vector

func unit_died(unit):
    unit.queue_free()

func gold_unit_died(points):
    Globals.nodes.ui.increase_score(points)
