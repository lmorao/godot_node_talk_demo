extends Control

func _ready():
    pass # Replace with function body.

func increase_score(points):
    var node = get_node("HBoxContainer/Score")
    var current_score = int(node.text)
    node.text = str(current_score + points)
