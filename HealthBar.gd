extends Control



func _ready():
    pass # Replace with function body.


func player_set_hp(hp):
    get_node("ProgressBar").value = hp
