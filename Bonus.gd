extends Node2D

func _ready():
    get_parent().connect("unit_died", self, "bonus_points")

func bonus_points():
    Globals.nodes.unit_manager.gold_unit_died(1)
