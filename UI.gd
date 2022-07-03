extends CanvasLayer



func _ready():
    Globals.nodes.ui = self


func player_set_hp(hp):
    get_node("HealthBar").player_set_hp(hp)
    
func increase_score(points):
    get_node("Score").increase_score(points)
