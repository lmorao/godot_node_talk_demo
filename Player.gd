extends Node2D

var stats = {}

func _ready():
    stats.hp = 5
    Globals.nodes.player = self

func take_damage(damage):
    stats.hp -= damage
