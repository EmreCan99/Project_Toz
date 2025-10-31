extends Panel

@onready var itemSprite = $CenterContainer/Panel/itemSprite


func update(item: InventoryItem):
	if !item:
		$background.frame = 0
		itemSprite.visible = false
	else:
		$background.frame = 1
		itemSprite.visible = true
		itemSprite.texture = item.texture
