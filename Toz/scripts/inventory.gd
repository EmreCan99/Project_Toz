class_name Inventory extends Resource

@export var name: String = ""
@export var items : Array[InventoryItem]


func insert(item: InventoryItem):
	for i in range(items.size()):
		if !items[i]:
			items[i] = item
			GameManager.updateInventoryGUI()
			break
